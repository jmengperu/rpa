;Header and description

(define (domain da2)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions)

(:types 
    localizacion ambulancia paciente hospital -object  
)

; un-comment following line if constants are needed
;(:constants )

(:predicates 
    (enlace ?l1 - localizacion ?l2 - localizacion)
    (ubicacion ?v - ambulancia ?l - localizacion)
    (ubicacionp ?p - paciente ?l - localizacion)
    (ubicacionh ?h - hospital ?l - localizacion)
    (inambulancia ?v - ambulancia )
    (internar ?h - hospital ?p - paciente)
)

(:action conducir
    :parameters (?v - ambulancia ?l1 - localizacion ?l2 - localizacion)
    :precondition (and
        (ubicacion ?v ?l1)
        (enlace ?l1 ?l2 )
     )
    :effect (and
        (ubicacion ?v ?l2)
        (not (ubicacion ?v ?l1))
     )
)

(:action subir
    :parameters (?v - ambulancia ?lp - localizacion ?p - paciente ?h - hospital)
    :precondition (and
        (ubicacionp ?p ?lp)
        (ubicacion ?v ?lp)
        (not (internar ?h ?p))
        (not (inambulancia ?v))
     )
    :effect (and
        (inambulancia ?v)
        (not (ubicacionp ?p ?lp))
     )
)

(:action bajar
    :parameters (?v - ambulancia ?lp - localizacion ?p - paciente ?h - hospital)
    :precondition (and
        (inambulancia ?v)
        (ubicacionh ?h ?lp)
        (ubicacion ?v ?lp)
     )
    :effect (and
        (ubicacionp ?p ?lp)
        (internar ?h ?p)
        (not (inambulancia ?v))
     )
)

)