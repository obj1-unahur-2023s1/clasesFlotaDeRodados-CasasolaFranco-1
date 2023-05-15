import rodados.*

class Dependecia {
	var property cantidadEmpleados
	const flota = []
	
	method agregarAFlota(rodado) {flota.add(rodado)}
	
	method quitarDeFlota(rodado) {flota.remove(rodado)}
	
	method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})
	
	method estaBienEquipada() = flota.size() >= 3 && flota.all({rodado => rodado.velocidadMaxima() >= 100})
	
	method capacidadTotalEnColor(color) {
		return flota.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	}
	
	
}

