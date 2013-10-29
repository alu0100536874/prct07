#!/usr/bin/env ruby 

require "lib/racional.rb"

	describe Fraccion do
	  before :each do
		@F = Fraccion.new(4, 7)
		@F1 = Fraccion.new(3, 2)
	  end	
	    
	
  	describe "# Se debe invocar al metodo numerador() para obtener el numerador" do
	  it "Se debe invocar al metodo numerador() para obtener el numerador" do
	    @F.numerador.should eq(4)
	  end
   	end

	
   	describe "# Se debe invocar al metodo denominador() para obtener el denominador" do
	  it "Se debe invocar al metodo denominador() para obtener el denominador" do
	    @F.denominador.should eq(7)
	  end
	end

	
  	describe "# Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
	  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
	    @F.to_s.should eq("4/7")
	  end
	end
	
	
	describe "#   Se debe mostar por la consola la fraccion en formato flotante" do
	  it "  Se debe mostar por la consola la fraccion en formato flotante" do
	    @F.to_f.should eq(0.5714285714285714)
	  end
	end
	

	describe "# Se debe comparar si dos fracciones son iguales con ==" do
	  it "Se debe comparar si dos fracciones son iguales con ==" do
	    res = @F == @F1
	    res.should eq(false)	
	  end
	end
	
	
	describe "# Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
	  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
	    @F.abs.to_s.should eq("4/7")
	  end
	end
	
	describe "# Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
	  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
	    @F.inverso.to_s.should eq("7/4")
	  end
	end

	
	describe "# Se debe calcular el opuesto de una fraccion con -" do
	  it "Se debe calcular el opuesto de una fraccion con -" do
	    frac = -@F
	    frac.to_s.should eq("-4/7")
	  end
	end
	
	
	describe "#Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	    frac = @F + @F1
	    frac.to_s.should eq("29/14")
	  end
	end

	
	describe "#Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	    frac = @F - @F1
	    frac.to_s.should eq("-13/14")
	  end
	end
	
	
	describe "#Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
	  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
	    frac = @F * @F1
	    frac.to_s.should eq("12/14")
	  end
	end
	
	
	describe "#Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
	  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
	    frac = @F / @F1
	    frac.to_s.should eq("8/21")
	  end
	end
	

	describe "#Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
	  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
	    fracr = @F % @F1
	    fracr.to_f.should eq(0.5714285714285714)
	  end
	end

	
	describe "Se debe de poder comprobar si una fracion es menor que otra" do
	  it "Se debe de poder comprobar si una fracion es menor que otra" do
	     res = @F > @F1
	     res.should eq(false)
	  end
	end
	

	describe "Se debe de poder comprobar si una fracion es mayor que otra" do
		it "Se debe de poder comprobar si una fracion es mayor que otra" do
			res = @F < @F1
			res.should eq(true)
		end
	end
	
	
	describe "Se debe de poder comprobar si una fracion es menor o igual que otra" do
		it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
			res = @F >= @F1
			res.should eq(false)
		end
	end
	
	
	describe "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
			res = @F <= @F1
			res.should eq(true)
		end
	end
  	
end
