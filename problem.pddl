(define (problem prob_actividad_3) (:domain dom_actividad_3)
(:objects 
    l_1 l_2 l_3 l_4 -localizacion
    pac_1 pac_2 -paciente
    amb - ambulancia
    hosp - hospital
)
(:init
    
    (ubicacion_hospital hosp l_1)
    (ubicacion_paciente pac_1 l_3)
    (ubicacion_paciente pac_2 l_4)
    (ubicacion_ambulancia amb l_1)
    (camino l_1 l_2)
    (camino l_2 l_4)
    (camino l_4 l_3)
    (camino l_2 l_1)
    (camino l_4 l_2)
    (camino l_3 l_4)



)

(:goal (and
    
    (paciente_hospital pac_2)
    (paciente_hospital pac_1)   
    
))


)
