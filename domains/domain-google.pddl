(define (domain books)
  (:requirements :strips :equality :typing :adl :fluents)

	(:predicates
		(book ?b)
		(library ?l)
		(at ?l ?b)
		(is_signed ?l)
		(is_sent ?b)
		(being_signed ?l ?d)
		(signing ?l ?c)
		(free ?l ?d ?c)
		(count ?c)
		(currently_signing ?l)
		(day ?d)
		(current_day ?d)
		(award ?b ?a)
		(awarded ?a)
	)

	(:action send 
		:parameters (?l ?b ?d ?c ?a)
		:precondition (and (library ?l) (book ?b) (at ?l ?b) (day ?d) (count ?c) (free ?l ?d ?c) (is_signed ?l) (not (is_sent ?b)) (award ?b ?a) (current_day ?d))
		:effect (and (not (free ?l ?d ?c)) (is_sent ?b) (awarded ?a))
	)

	(:action start_sign 
		:parameters (?l ?d)
		:precondition (and (library ?l) (day ?d) 
			(not (exists (?l1) (and	(library ?l1) (currently_signing ?l1)))))
		:effect (and (currently_signing ?l))
	)

	(:action keep_sign
		:parameters (?l ?c ?d)
		:precondition (and (library ?l) (count ?c) (day ?d) (signing ?l ?c) (currently_signing ?l) (not (being_signed ?l ?d)))
		:effect (and (not (signing ?l ?c)) (being_signed ?l ?d))
	)

	(:action finish_sign
		:parameters (?l ?d)
		:precondition (and (library ?l) (day ?d) (not (is_signed ?l)) (not (exists (?c) (and (count ?c) (signing ?l ?c)))))
		:effect (and (is_signed ?l) (not (currently_signing ?l)))
	)
)