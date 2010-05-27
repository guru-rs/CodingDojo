# triangulo.rb
class Triangulo

	def initialize a,b,c
    @a=a
    @b=b
    @c=c
	end

	def valida
    return false if lado_nulo? or lados_zerados? or lados_negativos? or invalido?
		true
	end


	def escaleno?
		valida and @a != @b and @b != @c
	end

	def isoceles?
		valida and (@a == @b or @a == @c or @b == @c)
	end

	def equilatero?
		valida and (@a == @b and @b == @c)
	end

	def pitagorico?
		hipotenusa = [@a, @b, @c].max
		

		valida and (@a == @b and @b == @c)
	end


  private

  def lado_nulo?
    @a==nil or @b==nil or @c==nil
  end

  def lados_zerados?
		@a==0 or @b==0 or @c==0
  end

  def lados_negativos?
		@a<0 or @b<0 or @c<0
  end

	def invalido?
		!(@a<@b+@c and @b<@a+@c and @c<@a+@b) 
  end

end

