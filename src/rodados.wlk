class Corsa {
	var property color
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300	
}

class Renault {
	var property tieneTanqueExtra
	method capacidad() = if (tieneTanqueExtra) {3} else {4}
	method velocidadMaxima() = if (tieneTanqueExtra) {120} else {130}
	method color() = azul
	method peso() = if (tieneTanqueExtra) {1350} else {1200}
}

object trafic {
	var property interior
	var property motor
	
	method capacidad() = interior.capacidad()
	method peso() = 4000 + interior.peso() + motor.peso()
	method velocidadMaxima() = motor.velocidadMaxima()
	method color() = blanco
}

class Interior {
	var property capacidad
	var property peso
}

const interiorComodo = new Interior(capacidad = 5, peso = 700)
const interiorPopular = new Interior(capacidad = 12, peso = 1000)

class Motor {
	var property peso
	var property velocidadMaxima
}

const motorPulenta = new Motor(peso = 800, velocidadMaxima = 130)
const motorBataton = new Motor(peso = 500, velocidadMaxima = 80)

object blanco {}
object azul {}