(define (problem problema1) (:domain da2)
(:objects 
    amb1 amb2 - ambulancia
    l1 l2 l3 l4 l5 l6 - localizacion
    p1 p2 p3 - paciente
    h1 - hospital
)

(:init
    
    (enlace l1 l2)
    (enlace l2 l4)
    (enlace l4 l3)

    (enlace l3 l4)
    (enlace l4 l2)
    (enlace l2 l1)

    (enlace l2 l5)
    (enlace l5 l2)

    (enlace l5 l6)
    (enlace l6 l5)

    (enlace l6 l4)
    (enlace l4 l6)
    ;esenario 3
    (ubicacion amb1 l1)
    (ubicacion amb2 l1)
    (ubicacionp p1 l3)
    (ubicacionp p2 l5)
    (ubicacionp p3 l6)
    (ubicacionh h1 l1)
)

(:goal (and
    (internar h1 p1)
    (internar h1 p2)
    (internar h1 p3)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
