import cosas.* 

object casaDePepeYJulian {
	const cosas =[]
	method comprar(cosa){
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas(){
		return cosas
	}
	method tieneComida(){
		return cosas.any({cosa => cosa.esComida() })
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio()>=5000
	}
	method esDerrochona(){
		return cosas.sum({cosa=>cosa.precio()})>=9000
	}
	method compraMasCara(){
		return cosas.max({cosa => cosa.precio()})
	}
	method electrodomesticosComprados(){
		return cosas.filter({cosa=> cosa.esElectrodomestico()})
	}
	method malaEpoca(){
		return cosas.filter({cosa=> cosa.esComida()})
	}
	method queFaltaComprar(lista){
		return lista.filter({quiero=>not cosas.contains(quiero)})
	}
	method faltaComida(){
		return cosas.filter({cosa=> cosa.esComida()}).size()<=2
	}
}

