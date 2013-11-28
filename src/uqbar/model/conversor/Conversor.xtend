package uqbar.model.conversor

class Conversor {

	@Property double millas
	@Property double kilometros

	// ********************************************************
	// ** Acciones
	// ********************************************************
	def void convertir() {
		this.kilometros = this.millas * 1.60934
	}

	def void validar(double millas) {
		if (millas < 0) {
			throw new RuntimeException("No se puede convertir valores negativos")
		}
	}

}
