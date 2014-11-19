package uqbar.ui.conversor.activity

import android.os.Bundle
import uqbar.android.mvc.MainActivity
import uqbar.android.mvc.binding.ModelBinder
import uqbar.model.conversor.Conversor
import uqbar.model.conversor.ConversorApplicationModel
import uqbar.model.conversor.Events

class ConversorActivity extends MainActivity {
	
	ConversorApplicationModel model = new ConversorApplicationModel(new Conversor)
	ModelBinder binder

	new() {
		
	}
	
    override void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState)
        contentView = R.layout.activity_conversor
        
		this.binder = new ModelBinder(this, model)
			.property(R.id.conversor_millas, "millas") //
			.property(R.id.conversor_kilometros, "kilometros") //
			.action(R.id.conversor_convertir, "convertir") //
			.when(Events.CONVERTIR, "actualizarResultado") //
			.updateView()
    }
    
    def void actualizarResultado() {
    	binder.updateView()
    }
	
}