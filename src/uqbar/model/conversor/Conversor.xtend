package uqbar.model.conversor

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Conversor {

	double millas
	double kilometros

	static double FACTOR_CONVERSION = 1.60934
	
	// ********************************************************
	// ** Acciones
	// ********************************************************
	def void convertir() {
		this.kilometros = this.millas * FACTOR_CONVERSION
	}

	def void validar(double millas) {
		if (millas < 0) {
			throw new RuntimeException("No se puede convertir valores negativos")
		}
	}

}
