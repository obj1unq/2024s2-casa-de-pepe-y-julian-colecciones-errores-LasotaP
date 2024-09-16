import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa) {
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas() {
	  return cosas.size()
	}
	method tieneAlgun(categoria) {
	  return cosas.any { cosa => cosa.categoria() == categoria } // encontrar algo en una lista
	}
	method vieneDeComprar(categoria) {
	  	return cosas.last().categoria() == categoria
	}
	method totalComprado() {
		return cosas.map({cosa => cosa.precio()}).sum()
		// cosas.sum({cosa => cosa.precio()})
	}
	method esDerrochona() {
		return self.totalComprado() > 9000
	}
	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()})
	}
	method comprados(categoria) {
		return cosas.filter({cosa => cosa.categoria() == categoria})
	}
	method malaEpoca() {
		return cosas.all({cosa => cosa.categoria() == comida})
		// cosas.all({cosa => esComestible(cosa)})
	}
	method queFaltaComprar(lista) {
		return cosas.filter({cosa => not self.estaComprado(cosa)})
	}
	method estaComprado(cosa) {
		return cosas.contains(cosa)
	}
	method faltaComida() {
		return self.comprados(comida).size() < 2
		// cosas.count({cosa => cosa.categoria().esComestible()})
	}
	method categoriasCompradas() {
		//return cosas.map({cosa => cosas.})
	}
}

object pepe {

}
object julian {
  
}