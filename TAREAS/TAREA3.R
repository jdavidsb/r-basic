# Dad una expresión para calcular 3e-pi y a continuación, dad el resultado que habéis obtenido con R redondeando
# a 3 cifras decimales.
# Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras

e = exp(1)
round(3*e-pi,3)

nuevo <- (2+3i)^2/(5+8i)
resultado <- Mod(nuevo)
round(resultado, 3)

# SOLUCIÓN 2
round(3*exp(1)-pi,3)

round(Mod((2+3i)^2/(5+8i)),3)