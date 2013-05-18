class MiLibro
    def initialize(titulo, autor)
	@titulo = titulo
	@autor = autor
    end
    def titulo
	@titulo
    end 
     def autor
	@autor
    end 
    def titulo=(mi_titulo)
      @titulo=mi_titulo
    end
    def autor=(mi_autor)
      @autor=mi_autor
    end
end

libro = MiLibro.new('Ruby', 'Matz')
puts libro.titulo()
puts libro.autor()
libro.titulo = 'The Ruby Programming Lenguage'
libro.autor = 'Yuki'