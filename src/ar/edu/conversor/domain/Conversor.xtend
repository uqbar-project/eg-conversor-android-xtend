package ar.edu.conversor.domain

import java.math.BigDecimal

class Conversor {
	BigDecimal valorOrigen
	
	new(String origen) {
		valorOrigen = new BigDecimal(origen)
	}
	
	def convertir() {
		valorOrigen.multiply(new BigDecimal(1.609344)).setScale(4, BigDecimal.ROUND_HALF_UP)
	}
	
}