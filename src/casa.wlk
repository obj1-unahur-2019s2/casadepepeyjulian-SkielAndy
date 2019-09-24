import cosas.*
import cuentaBancaria.*

object casaDePepeYJulian {

	var cosas = []
	var property cuentaQueEstaUsando

	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}

	method gastar(importe) {
		cuentaQueEstaUsando.extraer(importe)
	}

	method dineroDisonible() {
		return cuentaQueEstaUsando.saldo()
	}

	method cantidadDeCosasCompradas() {
		return cosas
	}

	method tieneComida() {
		return cosas.any({ cosa => cosa.esComida() })
	}

	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}

	method esDerrochona() {
		return cosas.sum({ cosa => cosa.precio() }) >= 9000
	}

	method compraMasCara() {
		return cosas.max({ cosa => cosa.precio() })
	}

	method electrodomesticosComprados() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() })
	}

	method malaEpoca() {
		return cosas.all({ cosa => cosa.esComida() })
	}

	method queFaltaComprar(lista) {
		return lista.filter({ quiero => not cosas.contains(quiero) })
	}

	method comidaComprada() {
		return cosas.filter({ cosa => cosa.esComida() })
	}

	method faltaComida() {
		return self.comidaComprada().size() <= 2
	}

	method gastoEnComida() {
		return self.comidaComprada().sum({ cosa => cosa.precio() })
	}

	method hayElectrodomesticosBaratos() {
		return self.electrodomesticosComprados().any({ cosa => cosa.precio() < 3000 })
	}

	method preciosDeElectrodomesticos() {
		return self.electrodomesticosComprados().map({ cosa => cosa.precio() })
	}

	method nivelEnAumento() {
		return (cosas.last().precio() > cosas.first().precio() * 2)
	}

	method primeraComidaComprada() {
		return self.comidaComprada().first()
	}

}

