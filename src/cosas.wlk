object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesa{
	var property precio=260
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object botellaDeSalsaDeTomates{
	var property precio=90
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas  {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object unKiloDeCebolla {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object packComida{
	var plato 
	var aderezo
	method configurar(unPlato,unAderezo){
		plato=unPlato
		aderezo=unAderezo
	}
	method precio(){
		return plato.precio()+aderezo.precio()
	}
}

object computadora{
	var dolar=500
	method precio() { return dolar*60 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object packRegalo{
	var regalos=[]
	method configurar(regalo){
		regalos.add(regalo)
	}
	method precio(){
		return regalos.sum({regalo=> regalo.precio()})*0.8
	}
	method esComida(){
		return regalos.all({regalo=> regalo.esComida()})
	}
	method esElectrodomestico(){
		return regalos.any({regalo=> regalo.esElectrodomestico()})
	}
}