class Mina

    def initialize()
        @caracter = " "
        @estadoDeLaCasilla = false
    end

    def getContenido()
        @caracter
    end

    def setContenido(caracter)
        @caracter = caracter
    end

    def estadoDeLaCasilla()
        @estadoDeLaCasilla
    end
    def cambiarEstadoDeLaCasilla()
        @estadoDeLaCasilla = true
    end
end