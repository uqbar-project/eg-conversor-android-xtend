package uqbar.model.conversor

import org.eclipse.xtend.lib.annotations.Accessors
import uqbar.android.mvc.binding.ObservableObject

@Accessors
class ConversorApplicationModel extends ObservableObject {
	
	Conversor model

	new(Conversor conversor) {
		this.model = conversor
	}
	
	def void convertir(){
		this.model.convertir
		fireEvent(Events.CONVERTIR)
	}

	def String getMillas(){
		return String.valueOf(this.model.millas)
	}
	
	def void setMillas(String millas){
		this.model.millas = Double.parseDouble(millas)
	}
	
	def String getKilometros(){
		return String.valueOf(this.model.kilometros)
	}
	
	def void setKilometros(String kilometros){
		this.model.kilometros = Double.parseDouble(kilometros)
	}
	
}