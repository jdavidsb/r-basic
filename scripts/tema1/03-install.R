# INSTALAR UN PAQUETE
install.packages("tidyverse", dep = TRUE)
# CARGAR EL PAQUETE
library(tidyverse)

# INSTALAR OTRO PAQUETE magic (crear cuadrados m?gicos)
install.packages("magic", dep = TRUE)
# CARGAR EL PAQUETE
library(magic)

# GENERAR UN CUADRADO MAGICO
magic(6)

# PARA VER LOS PAQUETES INSTALADOS
installed.packages()
