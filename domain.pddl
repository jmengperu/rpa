(define (domain dom_actividad_3)


(:requirements :strips :typing :negative-preconditions)
(:types 
    ambulancia hospital localizacion paciente - object
)

(:predicates 
    (camino ?l1 - localizacion ?l2 - localizacion)
    (ubicacion_ambulancia ?amb - ambulancia ?loc - localizacion)
    (ubicacion_paciente ?pac - paciente ?loc - localizacion)
    (ubicacion_hospital ?hos - hospital ?loc - localizacion)
    (ambulancia_cargada ?amb - ambulancia)
    (paciente_hospital ?pac - paciente )
    
)

(:action desplazar_ambulancia
    :parameters (?amb - ambulancia ?l1 - localizacion ?l2 - localizacion)
    :precondition (and 
        (ubicacion_ambulancia ?amb ?l1) 
        (camino ?l1 ?l2))
    :effect (and (ubicacion_ambulancia ?amb ?l2) (not(ubicacion_ambulancia ?amb ?l1)))
)

(:action recoger_paciente
    :parameters (?amb - ambulancia ?pac - paciente ?l1 - localizacion ?hosp - hospital)
    :precondition (and
         (ubicacion_ambulancia ?amb ?l1) 
         (ubicacion_paciente ?pac ?l1)
         (not(paciente_hospital ?pac))
         (not(ambulancia_cargada ?amb))         
         )
    :effect (and
        (ambulancia_cargada ?amb) 
        (not(ubicacion_paciente ?pac ?l1)))
)

(:action dejar_paciente
    :parameters (?amb - ambulancia ?pac - paciente ?l1 - localizacion ?hosp - hospital)
    :precondition (and 
        (ambulancia_cargada ?amb)
        (ubicacion_ambulancia ?amb ?l1) 
        (ubicacion_hospital ?hosp ?l1))
    :effect (and
         (not(ambulancia_cargada ?amb)) 
         (paciente_hospital  ?pac) 
         (ubicacion_paciente ?pac ?l1))
)
)
