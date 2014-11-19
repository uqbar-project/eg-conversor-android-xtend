package com.example.conversor_android_xtend.xtendroid

import android.view.View
import ar.edu.conversor.domain.Conversor
import com.example.conversor_android_xtend.R
import org.xtendroid.app.AndroidActivity

/**
 * @author jfernandes
 */
@AndroidActivity(R.layout.activity_conversor)
class ConversorXtendroid {
	
	override convertir(View element) {
		val result = new Conversor(valorOrigen.text.toString).convertir
		valorDestino.text = result.toString
	}
	
}