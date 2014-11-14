package ar.edu.conversor.domain

import java.math.BigDecimal
import org.eclipse.xtend.lib.annotations.Accessors

/**
 * @author fdodino
 */
@Accessors
class Conversor {
	BigDecimal valorOrigen
	
	new(String origen) {
		valorOrigen = new BigDecimal(origen)
	}
	
	def convertir() {
		valorOrigen.multiply(new BigDecimal(1.609344)).setScale(4, BigDecimal.ROUND_HALF_UP)
	}
	
}