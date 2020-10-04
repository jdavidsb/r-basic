# Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
# ¿A qué hora de qué día de qué año llegaríamos a los 250 millones de segundos?
# ¡CUIDADO CON LOS AÑOS BISIESTOS!

inicio = ymd_hms("2018-01-01 00-00-00")
inicio
segundos = 250000000
fin = inicio + dseconds(segundos)
fin

# SOLUCIÓN 2
segDia=(60*60*24)
segHora=(60*60)
segAno=(segDia*365)
tiempo=250000000
anos=tiempo%/%segAno
restoAnos=tiempo%%segAno
dias=restoAnos%/%segDia-2
horas=(restoAnos%%segDia)%/%segHora
minutos=(restoAnos%%segDia)%%segHora%/%60
sprintf("Año %i, dia: %i, Hora %i:%i",2018+anos, dias, horas, minutos)
