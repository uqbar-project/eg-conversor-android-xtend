package com.example.conversor_android_xtend.multiple

import java.math.BigDecimal
import org.eclipse.xtend.lib.Property

class Medida {
	String descripcion
	@Property BigDecimal factor
	
	new(String descripcion, BigDecimal factor) {
		this.descripcion = descripcion
		this.factor = factor
	}
	
	def convertir(BigDecimal valorOrigen) {
		valorOrigen.multiply(new BigDecimal(1.609344)).multiply(factor).setScale(4, BigDecimal.ROUND_HALF_UP)	
	}
	
	override toString() {
		descripcion
	}
	
	def static getMedidas() {
		#[
			new Medida("Km", 1bd), 
			new Medida("m",  1000bd), 
			new Medida("dm", 10000bd),
			new Medida("cm", 100000bd), 
			new Medida("mm", 1000000bd)
		]
	}
	
}