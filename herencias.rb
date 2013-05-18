class Animal
   def ladrar
      puts 'Guau'
   end
end

class Gato < Animal 
  def maullar
    puts 'Miau'
  end
end


gato = Gato.new
puts 'El gato hace....'
gato.maullar