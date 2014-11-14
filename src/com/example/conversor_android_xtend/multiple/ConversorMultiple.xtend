package com.example.conversor_android_xtend.multiple

import ar.edu.conversor.domain.Conversor
import org.eclipse.xtend.lib.annotations.Accessors

/**
 * 
 * @jfernandes
 */
 @Accessors
class ConversorMultiple extends Conversor {
	Medida medida = Medida.getMedidas.get(0) // KM por default
	
	new() {
		super("0")
	}
	
	override convertir() {
		super.convertir().multiply(medida.factor)
	}
	
}