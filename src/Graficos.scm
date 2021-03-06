(require plot)
(plot-new-window? #t)
(load "Generador.scm")

;   ██████╗ ██████╗  █████╗ ███████╗██╗ ██████╗ ██████╗ ███████╗
;  ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██║██╔════╝██╔═══██╗██╔════╝
;  ██║  ███╗██████╔╝███████║█████╗  ██║██║     ██║   ██║███████╗
;  ██║   ██║██╔══██╗██╔══██║██╔══╝  ██║██║     ██║   ██║╚════██║
;  ╚██████╔╝██║  ██║██║  ██║██║     ██║╚██████╗╚██████╔╝███████║
;   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝
;                                                               

;Función que crea el gráfico 3D
(define grafica
  (lambda ()
    (parameterize ([plot-title  "Gráfico generado"]
                   [plot-x-label "Eje x"]
                   [plot-y-label "Eje y"]
                   [plot-z-label "f(x,y)"]
                   [plot-foreground-alpha 0.5])
      (plot3d (contour-intervals3d (lambda (x y) (expte x y))
                                   0 1 2 4)))))
 
 

