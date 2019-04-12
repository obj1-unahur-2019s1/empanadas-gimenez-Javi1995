object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo() { 
		return sueldo
	}
	
	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}
	
	method gastar(cuanto) {
		// le alcanza la plata para todo el gasto
		if (dinero >= cuanto) {
			deuda -= cuanto
		} else {
			//le alcanza la plata para una parte
			if (dinero > 0) {
				deuda += cuanto - dinero
				dinero = 0
			} else {
				//no tiene plata, pura deuda
				deuda += cuanto
			}
		}
	}
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() { 
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	
	method totalCobrado() { return totalCobrado }
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}