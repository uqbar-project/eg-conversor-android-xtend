package com.example.conversor_android_xtend

import android.app.Activity
import android.os.Bundle
import android.view.Menu
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import ar.edu.conversor.domain.Conversor

/**
 * 
 */
class ConversorActivity extends Activity {

	override def onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState)
		
		setContentView(R.layout.activity_conversor)

		val botonConvertir = findViewById(R.id.btnConvertir) as Button
		botonConvertir.onClickListener = [view |
			val origen = findViewById(R.id.valorOrigen) as EditText
			val result = new Conversor(origen.getText().toString()).convertir
			
			val destino = findViewById(R.id.valorDestino) as TextView
			destino.setText(result.toString())
		]
	}
	
	
	
	override def onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		menuInflater.inflate(R.menu.conversor, menu)
		return true
	}

}
