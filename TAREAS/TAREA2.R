# Cread una función que os resuelva una ecuación de primer grado (de la forma Ax+B=0). Es decir,
# vosotros tendréis que introducir como parámetros los coeficientes (en orden) y la función os tiene
# que devolver la solución. Por ejemplo, si la ecuación es 2x+4=0, vuestra función os tendría que devolver -2

resolver = function(a,b,r){
  if(a == 0){
    c <- (r-b)
  }else{
    c <- (r-b)/a 
  }
  print("El resultado es: ")
  print(c)
  print("Sustituimos en la fórmula Ax + B = r")
  print(paste(sprintf("%i*(%i) + %i = ",a,c,b),r))
}

resolver(2,4,0)
resolver(7,4,18)
resolver(0,1,1)

# SOLUCIÓN 2 Pero no sirve si le paso a = 0
f=function(A,B,C){  (C-B)/A }
f(2,4,0)
f(7,4,18)
f(0,1,1)
