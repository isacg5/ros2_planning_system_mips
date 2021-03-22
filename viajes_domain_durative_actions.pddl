(define (domain travel_d_actions)
(:requirements :strips :equality :typing :durative-actions)

(:types
  planet spaceship robot
)

(:predicates
  (robot_at ?r - robot ?p - planet)
  (spaceship_at ?s - spaceship ?p - planet)
  (in ?r - robot ?s - spaceship)
  (planet_available ?p - planet)
  (spaceship_available ?s - spaceship)
)

(:durative-action load
    :parameters (?r - robot ?s - spaceship ?p - planet)
    :duration (= ?duration 6)
    :condition (and
        (at start (and
          (robot_at ?r ?p)
          (spaceship_available ?s)
        ))
        (over all (and
          (spaceship_at ?s ?p)
        ))
    )
    :effect (and
        (at start (and
          (not (robot_at ?r ?p))
        ))
        (at end (and
          (in ?r ?s)
          (not (spaceship_available ?s))
        ))
    )
)

(:durative-action unload
    :parameters (?r - robot ?s - spaceship ?p - planet)
    :duration (= ?duration 5)
    :condition (and
        (at start (and
          (in ?r ?s)
        ))
        (over all (and
          (spaceship_at ?s ?p)
        ))
    )
    :effect (and
        (at start (and
          (not (in ?r ?s))
        ))
        (at end (and
          (robot_at ?r ?p)
          (spaceship_available ?s)
        ))
    )
)


(:durative-action fly
    :parameters (?s - spaceship ?from ?to - planet)
    :duration (= ?duration 15)
    :condition (and
        (at start (and
          (spaceship_at ?s ?from)
        ))
        (over all (and
          (not (= ?from ?to))
        ))
        (at end (and
          (planet_available ?to)
        ))
    )
    :effect (and
        (at start (and
          (not (spaceship_at ?s ?from))
          (spaceship_at ?s ?to)
        ))
        (at end (and
          (not (planet_available ?to))
          (planet_available ?from)
        ))
    )
)
)
