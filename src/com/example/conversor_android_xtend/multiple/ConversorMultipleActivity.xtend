package com.example.conversor_android_xtend.multiple

import android.app.Activity
import android.os.Bundle
import android.view.View
import android.view.View.OnClickListener
import android.widget.AdapterView
import android.widget.AdapterView.OnItemSelectedListener
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import android.widget.TextView
import com.example.conversor_android_xtend.R
import java.math.BigDecimal

/**
 * Convierte a varias medidas de destino seleccionables con un Spinner.
 * 
 * @author jfernandes
 */
class ConversorMultipleActivity extends Activity implements OnClickListener, OnItemSelectedListener {
	ConversorMultiple conversor

	override def onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState)
		this.conversor = new ConversorMultiple
		
		contentView = R.layout.activity_conversor_multiple

		findViewById(R.id.multiple_convertir) as Button => [
			onClickListener = this
		]
		
		findViewById(R.id.multiple_medida) as Spinner => [
			adapter = new ArrayAdapter(this, R.layout.list_view_medida_item, R.id.multiple_medida_text, Medida.medidas)
			onItemSelectedListener = this
		]
	}
	
	// button click
	
	override onClick(View v) {
		val origen = findViewById(R.id.multiple_valorOrigen) as EditText
		
		// popular input
		conversor.valorOrigen = new BigDecimal(origen.text.toString) 
		// convierte
		var result =  conversor.convertir
		
		val destino = findViewById(R.id.multiple_valorDestino) as TextView
		destino.setText(result.toString)
	}
	
	// spinner selection
	
	override onItemSelected(AdapterView<?> parent, View view, int pos, long id) {
		val medidaSeleccionada = parent.getItemAtPosition(pos) as Medida
		conversor.medida = medidaSeleccionada
	}
	
	override onNothingSelected(AdapterView<?> arg0) {
	}

}
