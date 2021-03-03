(define (domain all-out-d)
	(:requirements :negative-preconditions :conditional-effects :equality)
	(:predicates 
		(is-up ?coin)
		(has-two-neighbours ?coin)
		(has-three-neighbours ?coin)
		(has-four-neighbours ?coin)
	    (is-adjacent ?coin1 ?coin2)
	)
	(:action flip5
		:parameters (
			?coinC
			?coinT
			?coinB
			?coinL
			?coinR
		)
		:precondition (and 
			(not (= ?coinC ?coinT))
			(not (= ?coinC ?coinB))
			(not (= ?coinC ?coinL))
			(not (= ?coinC ?coinR))
			(not (= ?coinT ?coinB))
			(not (= ?coinT ?coinL))
			(not (= ?coinT ?coinR))
			(not (= ?coinB ?coinL))
			(not (= ?coinB ?coinR))
			(not (= ?coinL ?coinR))
			(not (has-two-neighbours ?coinC))
			(not (has-three-neighbours ?coinC))
			(has-four-neighbours ?coinC)
			(is-adjacent ?coinC ?coinT)
			(is-adjacent ?coinC ?coinB)
			(is-adjacent ?coinC ?coinL)
			(is-adjacent ?coinC ?coinR)
			
		)
		:effect (and 
			(when (is-up ?coinC) (not (is-up ?coinC)))
			(when (not (is-up ?coinC)) (is-up ?coinC))
			(when (is-up ?coinT) (not (is-up ?coinT)))
			(when (not (is-up ?coinT)) (is-up ?coinT))
			(when (is-up ?coinB) (not (is-up ?coinB)))
			(when (not (is-up ?coinB)) (is-up ?coinB))
			(when (is-up ?coinL) (not (is-up ?coinL)))
			(when (not (is-up ?coinL)) (is-up ?coinL))
			(when (is-up ?coinR) (not (is-up ?coinR)))
			(when (not (is-up ?coinR)) (is-up ?coinR))
		)
	)
	(:action flip4
		:parameters (
			?coinC
			?coin1
			?coin2
			?coin3
		)
		:precondition (and
			(not (= ?coinC ?coin1))
			(not (= ?coinC ?coin2))
			(not (= ?coinC ?coin3))
			(not (= ?coin1 ?coin2))
			(not (= ?coin1 ?coin3))
			(not (= ?coin2 ?coin3))
			(not (has-two-neighbours ?coinC))
			(has-three-neighbours ?coinC)
			(not (has-four-neighbours ?coinC))
			(is-adjacent ?coinC ?coin1)
			(is-adjacent ?coinC ?coin2)
			(is-adjacent ?coinC ?coin3)
		)
		:effect (and 
			(when (is-up ?coinC) (not (is-up ?coinC)))
			(when (not (is-up ?coinC)) (is-up ?coinC))
			(when (is-up ?coin1) (not (is-up ?coin1)))
			(when (not (is-up ?coin1)) (is-up ?coin1))
			(when (is-up ?coin2) (not (is-up ?coin2)))
			(when (not (is-up ?coin2)) (is-up ?coin2))
			(when (is-up ?coin3) (not (is-up ?coin3)))
			(when (not (is-up ?coin3)) (is-up ?coin3))
		)
	)
	(:action flip3
		:parameters (
			?coinC
			?coin1
			?coin2
		)
		:precondition (and 
			(not (= ?coinC ?coin1))
			(not (= ?coinC ?coin2))
			(not (= ?coin1 ?coin2))
			(has-two-neighbours ?coinC)
			(not (has-three-neighbours ?coinC))
			(not (has-four-neighbours ?coinC))
			(is-adjacent ?coinC ?coin1)
			(is-adjacent ?coinC ?coin2)
		)
		:effect (and 
			(when (is-up ?coinC) (not (is-up ?coinC)))
			(when (not (is-up ?coinC)) (is-up ?coinC))
			(when (is-up ?coin1) (not (is-up ?coin1)))
			(when (not (is-up ?coin1)) (is-up ?coin1))
			(when (is-up ?coin2) (not (is-up ?coin2)))
			(when (not (is-up ?coin2)) (is-up ?coin2))
		)
	)
	
)