class Buscaminas

	def initialize
		@tablero = [[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0]]		
		@puntajeJugador = 0
		@vidasJugador = 1
	end

	def iniciarVidas
		@vidasJugador = 1
		return @vidasJugador
	end

	def getVidas
		return @vidasJugador
	end

	def getTablero
		@tableroHTML = ""
		for i in(0..@tablero.length()-1)
			@tableroHTML+="<tr>"
			for j in(0..@tablero.length()-1)
				@tableroHTML+="<td>"
		 		@tableroHTML+= getCeldaFila(i,j)
				@tableroHTML+="</td>"
			end
			@tableroHTML+="</tr>"
		end
		return @tableroHTML
	end
	
	def getCeldaFila (fila, columna)
		celda = "<button name='c" + columna.to_s + "' value='" + @tablero[fila] [columna].to_s + "' class='btn_InicioJuego' onClick='validarCelda(this)'></button>"
	end

end
