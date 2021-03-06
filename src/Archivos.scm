;ARCHIVOS

;   █████╗ ██████╗  ██████╗██╗  ██╗██╗██╗   ██╗ ██████╗ ███████╗
;  ██╔══██╗██╔══██╗██╔════╝██║  ██║██║██║   ██║██╔═══██╗██╔════╝
;  ███████║██████╔╝██║     ███████║██║██║   ██║██║   ██║███████╗
;  ██╔══██║██╔══██╗██║     ██╔══██║██║╚██╗ ██╔╝██║   ██║╚════██║
;  ██║  ██║██║  ██║╚██████╗██║  ██║██║ ╚████╔╝ ╚██████╔╝███████║
;  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═════╝ ╚══════╝
;              
                                                 
; Obtiene lista de numeros del archivo
; Recibe un puerto de entrada
(define obtener-lista
  (lambda (in)
    (let ([buffer (read in)])
      (cond 
        ((eof-object? buffer) (close-input-port in) '())
        (else (cons buffer (obtener-lista in))
              )))))

; Objetos del archivo
(define leer-archivo
  (lambda (ruta)
    (obtener-lista (open-input-file ruta))))