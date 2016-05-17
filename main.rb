require_relative "caixa"

def getvalue
  gets.to_i
end
#menu
def menu(caixa)
  puts "\nOla, qual operacao voce deseja?"
  puts "1- deposito"
  puts "2- saque"
  puts "3- saldo"
  puts "4- sair"
  puts ""
  opc = gets.to_i
  puts ""
  if opc == 1
    puts "voce selecionou deposito."
    puts "digite o valor que vai ser depositado: "
    caixa.deposito(getvalue)
  elsif opc == 2
    puts "voce selecionou saque"
    puts "Digite o valor que vai ser retirado:  "
    caixa.saque(getvalue)
  elsif opc == 3
    puts "voce selecionou saldo"
      caixa.balance
  elsif opc == 4
    return
  else
    puts "Por favor, digite uma opcao valida \n"
  end
  menu(caixa) #recursividade do método
end

caixa = Caixa.new(0)
#chamando menu
menu(caixa)
