(define (problem problema1) (:domain da2)
(:objects 
    amb1 - ambulancia
    l1 l2 l3 l4 - localizacion
    p1 p2 - paciente
    h1 - hospital
)

(:init
    
    (enlace l1 l2)
    (enlace l2 l4)
    (enlace l4 l3)
    (enlace l3 l4)
    (enlace l4 l2)
    (enlace l2 l1)
    ;esenario 1
    (ubicacion amb1 l1)
    (ubicacionp p1 l3)
    (ubicacionp p2 l4)
    (ubicacionh h1 l1)
)

(:goal (and
    (internar h1 p1)
    (internar h1 p2)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
