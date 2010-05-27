require 'triangulo'

describe Triangulo do
	it "triangulo com um valor zero ou nulo deve retornar falso" do
		Triangulo.new(0,3,3).valida.should be_false
		Triangulo.new(3,3,nil).valida.should be_false
	end

	it "triangulo com algum valor negativo deve retornar falso" do
		Triangulo.new(-1,-1,-5).valida.should be_false
	end 

  it "triangulo com valores nulos deve retornar falso" do
    Triangulo.new(nil,nil,nil).valida.should be_false
  end

	it "triangulo com valores zerados deve retornar falso" do
		Triangulo.new(0,0,0).valida.should be_false	
	end


	it "triangulo com retas 3,3,3 deve ser valido" do
		Triangulo.new(3,3,3).valida.should be_true
	end

	it "lado nao deve ser maior que a soma dos outros 2" do
		Triangulo.new(2,3,5).valida.should be_false
		Triangulo.new(5,3,2).valida.should be_false
		Triangulo.new(3,5,2).valida.should be_false
	end

	it "deve ser equilatero com 5,5,5"
	do
		Triangulo.new(5,5,5).equilatero?.should be_true
	end

  it "deve retornar escaleno com 3,6,5" do
		Triangulo.new(3,6,5).escaleno?.should be_true
	end

	it "não deve ser escaleno com 1,2,150" do
		Triangulo.new(1,2,150).escaleno?.should be_false
	end

	it "deve ser isoceles com 4,4,2" do
		Triangulo.new(4,4,2).isoceles?.should be_true
	end

	it "deve ser escaleno e pitagorico com 3,4,5" do
		Triangulo.new(4,4,2).escaleno?.should be_true
		Triangulo.new(4,4,2).pitagorico?.should be_true
	end

	it "deve ser isoceles com 4,4,4" do 
		Triangulo.new(4,4,4).isoceles?.should be_true
	end

	it "deve ser equilatero com 5,5
end


