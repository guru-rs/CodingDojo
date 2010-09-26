class Numerology


  def initialize(name)
    @name = name.downcase
  end
  
  def contract_number(number)
    sum = 0
    number.to_s.each_char do |c|
      sum += c.to_i
    end
    return sum if sum.to_s.size == 1
    contract_number(sum)
  end
  
  def life_path  
    # life_path_sum = 0
    # 
    # asciiA = 'a'.ord
    # numerologic_cylce = 9
    # 
    # @name.split.each do |w|
    #   sum = 0
    #   w.each_char do |c|
    #     sum += c.ord % asciiA % numerologic_cycle + 1
    #   end
    #   life_path_sum += sum
    # end
    # 
    # return contract_number life_path_sum
    # 
    soma = 0
    
    ciclonumerologico = 9 
    
    
    @name.each_char do |c|
      if c != ' '
        asciiA = 'a'.ord
        soma = soma + (c.ord % asciiA % ciclonumerologico + 1)
      end 
    
    end

      
    return contract_number(soma)
    
  end
end

puts Numerology.new(ARGV[0]).life_path
