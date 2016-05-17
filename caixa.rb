#Objeto caixa eletronico
class Caixa
  def initialize(value)
    @value = value
  end
  #ver saldo
  def balance
    puts "seu saldo eh: #{@value.to_i}"
  end

  #metodo para depositar
  def deposito(deposit)
    @value += deposit
  end
  def saque(withdrawn)
    @value -= withdrawn
    #colocar uma subtração do valor da conta com o valor que será inserido
  end

end
