package com.example.conversor_android_xtend

import android.app.Activity
import android.os.Bundle
import android.view.Menu
import android.view.View
import android.view.View.OnClickListener
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import ar.edu.conversor.domain.Conversor

class ConversorActivity extends Activity implements OnClickListener {

	override def onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState)
		setContentView(R.layout.activity_conversor)
		val botonConvertir = findViewById(R.id.convertir) as Button
		botonConvertir.onClickListener = this
	}

	override def onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		menuInflater.inflate(R.menu.conversor, menu)
		return true
	}

	override onClick(View v) {
		val origen = findViewById(R.id.valorOrigen) as EditText
		val result = new Conversor(origen.getText().toString()).convertir
		val destino = findViewById(R.id.valorDestino) as TextView
		destino.setText(result.toString())
	}

}
