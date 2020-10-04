2*(3+5/2)

# Los paréntesis de dentro se ejecutan primero
2*((3+5)/2)

# En este caso primero se ejecuta la división y luego la suma
2/3+5

# Si lo que quiero es coger el cociente de la división para sumarle 5, sería así
2%/%3+5

# COCIENTE
2%/%3

#RESTO
2%%3

# 2 ELEVADO A 3 * 5
2^3*5

# POTENCIA NEGATIVA
2^-4

2^(-4)

# Cuántas semanas hay en 725 días
725%/%7
# Sobra algún día: sobra 4 días
725%%7

# dividendo = divisor * cociente + resto
# D = d * q + r
725 - 103*7

# resto = dividendo - divisor * cociente
# r = D - d * q

# cociente = Dividendo %/% divisor
# q = D %/% d

# resto = dividendo %% divisor
# r = D %% d

# Dará como resultado el número pi 3.141593
pi

2*pi

3^pi

pi^2

# Número más grande posible (infinito)
Inf
# Número más pequeño posible (-Infinito)
-Inf
# Valor desconocido Not avaible
NA
# not a numbre 
NaN

0/0

# Si intento representar números muy muy grandes
2^50
# 1.1259e+15
# Significa mover el punto decimal 15 posiciones a la derecha, es decir:
# 1125900000000000

# eso hay que entenderlo como: notación científica
2^-15
# 3.051758e-05
# Significa mover el punto decimal 5 posiciones a la izquierda, es decir:
# 0.00003051758

# vector
c(2^30, 2^(-15), 1, 2, 3/2)

# raíz cuadrada
sqrt(25)

# obtener el número e
exp(1)
# logaritmo neperiano de e - Logaritmo neperiano y exponencial son funciones opuestas
log(exp(1))

# logaritmo neperiano de pi
log(pi)

# logaritmo en base 10
log10(1000)
log(1000,10)

# Las siguientes 3 expresiones son iguales
log(32, 2)
log(x = 32, base = 2)
log(base = 2, 32)

# valor absoluto
abs(-pi)

# factorial es por ejemplo: de 7 = 7*6*5*4*3*2*1
factorial(7)
factorial(4)
# Solo funciona con números enteros y positivos
# Por convenio el factorial de 0 es 1
factorial(0)

# Coeficiente binomial
# si tuviera 5 platos y me quiero comer 3, de cuántas formas podría hacerlo
choose(5, 3)
# es decir:
# 1 2 3
# 1 2 4
# 1 2 5
# ... así todas las combinaciones posibles de comerse los 3 platos
# subconjunto de 3 elementos que podéis sacar de un conjunto de 5 elementos

6^log(4, 6)
log(4^6, 4)

# Si queremos utilizar funciones trigonométricas, R entiende que los argumentos 
# para aplicarles la función vendrán dados en radianes
# si en vez de utilizar radianes, los argumentos vienen en grados, hay que pasar
# de grados a radianes
# 1 grado = (1*pi)/180 radianes (sin "seno", cos "coseno", tan "tangente")
# 1 grado = (1*180)/pi (asin "arcoseno", acos "arcocoseno", atan "arcotangente")
sin(pi/2)
cos(pi)
tan(0)

# coseno de 60º estaría mal expresado así, ya que el coseno para angulos 
# entre 0 y pi/2 es positivo y si lo hago así me da negativo
cos(60)
# hay que pasar los grados a radianes
cos(60*pi/180)
# seno de 60º 
sin(60*pi/180)

sinpi(1/2) # = sin(pi/2)
sin(pi/2)

tan(pi) # -1.224647e-16 ~ 0

tan(pi/2) # 1.633124e+16 ~Inf

sin(60*pi/180)
# el arcoseno y el arcocoseno de 'x' se encontrará siempre entre [-1,1]
asin(0.8660254) # arcoseno en radianes, si lo queremos en grados:
asin(0.8660254)*180/pi

# EJEMPLO 1
x = seq(0, 2*pi, 0.1)
plot(x, sin(x), type="l", col="blue", lwd=3, xlab=expression(x), ylab="")
lines(x, cos(x), col="green", lwd=3)
lines(x, tan(x), col="purple", lwd=3)
legend("bottomleft", col = c("blue", "green", "purple"),
       legend = c("seno", "coseno", "tangente"), lwd=3, bty="l")

# imprimir la raíz cuadrada de 2 con 10 decimales
print(sqrt(2), 10)
# redondear la raíz cuadrada de 2 con 3 decimales
round(sqrt(2), 3)
# redondear a la baja la raíz cuadrada de 2
floor(sqrt(2))
# Al redondear números negativos a la baja, redondea al siguiente número inferior
floor(-3.45)
# redondear al alza la raíz cuadrada de 2
ceiling(sqrt(2))
# redondear números negativos al alza
ceiling(-3.45)
# Este resultado será el mismo que redondear a la baja (quita los decimales)
trunc(sqrt(2))
trunc(-3.45)


# Este sistema de comas flotantes y demás, lleva intrínseco un problema importante:
# ¿Qué pasa cuando vamos acumulando operaciones debido a comas flotantes o redondeos "insignificantes?

sqrt(2)^2 # = 2
sqrt(2)^2-2 # 4.440892e-16 sería 0

2^50
print(2^50, 15)
print(2^50, 2)
# R trabaja con un máximo de 16 dígitos, es decir, si intento imprimir pi con 40 decimales dará error:
print(pi, 40)
# cuando pido más de 16 dígitos, falla
print(pi, 22) # = 3.1415926535897931
# 3.1415926535897931
# 3.14159265358979323846

sqrt(2)^2 # = 2
round(sqrt(2), 4)^2

round(1.15, 1)
round(1.25, 1)
round(1.35, 1)
# cuando hacemos round a 0 cifras entiende que lo queremos redondear al entero más cercano
round(sqrt(2), 0)
round(sqrt(2))
# digits es para redondear a x decimales
round(digits = 5, sqrt(2))


# VARIABLES

(pi^2)/2
# Definir una variable con (=) izquierda variable, derecha el valor 
x = (pi^2)/2
# Mostrar contenido de una variable
x

# Definir una variable con (<-) Guardo a la izquierda la expresión de la derecha
y <- cos(pi/4)
y

# Definir una variable con (->) Guardo lo que hay a la izquierda en la variable de la derecha
sin(pi/4) + cos(pi/4) -> z
z

# Podemos definir una variable con una palabra
edad <- 30
nombre = "David"
# Es diferente una variable en mayúsculas de una en minúsculas
HOLA = 1
hola = 5

# Las variables siempre tienen que empezar con una letra o con un ( . )
pi.4 = 4*pi
pi.4

x = 2
x = x^2

x = sqrt(x)

# FUNCIONES

var = 4
doble = function(x){2*x}
doble(var) -> res
res

cuadrado = function(x){x^2}
cuadrado(var)

f = function(x){
  x^3 - (3^x) * sin(x)
  }
# Sería posible también crear la función así:
# f <- function(x){
#  x^3 - (3^x) * sin(x)
# } 

f(4) # 4^3 - (4^3) * sin(4)
f(5)
f(pi/2)

suma1 <- function(t){
  t + 1
}

suma1(6)
suma1(-5)

producto <- function(x, y){
  x * y
}

producto(5, 7)

compleja <- function(x, y, z){
  exp(x^2 + y^2) * sin(z)
}

compleja(1, 2, 3)
compleja(1, -1, pi)

suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero
}

suma5op <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}

suma5(3)
suma5op(3)
# Podría ser que al aplicar una función no recibamos solo números reales, es decir
# podríamos recibir un vector, una matriz, o una tabla de datos, etc

# Ver todas las variables y funciones creadas
ls()

# Eliminar una funcion
rm(producto)

ls()

# Borrar todas las funciones y variables
rm(list = ls())

# NÚMEROS COMPLEJOS
z = 2+3i
z2 = complex(real = 2, imaginary = -3)

Re(z)

Im(z)

Conj(z2)

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

# Esto es un error
# 2+7*i

# Error
# pi + sqrt(2)i

complex(real = pi, imaginary = sqrt(2)) -> z1
z1

# LOS NÚMEROS COMPLEJOS SE INVENTAN PARA PODER TRABAJAR CON RAÍZ CUADRADA DE NÚMEROS NEGATIVOS

# Esto daría error
# sqrt(-5)
sqrt(as.complex(-5))

# La raíz cuadrada devuelve, de las dos soluciones, la de la parte real de z positiva Re(z)>0,
# para obtener la otra parte, hay que multiplicar por -1
sqrt(3+2i) # z^2 = 3+2i
sqrt(3+2i)*-1

exp(3+2i)
sin(3+2i)
cos(3+2i)
tan(3+2i)
# Módulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)
# Argumento = arctan(Im(z)/Re(z))
# = arcos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# El argumento va de -pi (sin incluir) a pi (incluido) (-pi, pi]
Arg(z1)
Arg(-1+0i)
Arg(-1-2i)

# Conjugado = Re(z) - Im(z)i
Conj(z1)

# Parte real de z1
Re(z1)
# Parte imaginaria de z1
Im(z1)

# Cualquier número complejo z se puede calcular como z = Mod(z) * (cos(Arg(z)) + sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2

Mod(z2)
Arg(z2) # Es pi/2
pi/2

# TEST
fun = function(x){
  sqrt(x) * abs((-x)^3)
}
fun(4)
sqrt(4)
abs(-4^3)
2*64
