require_relative "caixa"

def getvalue
  gets.to_i
end

#menu
def menu(caixa)
  puts "qual operacao voce deseja?"
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
    menu_conta
  else
    puts "Por favor, digite uma opcao valida \n"
  end
  menu(caixa) #recursividade do método
end

def menu_conta
  caixa = Caixa.new #MELHORAR A CONTA, TENTAR TRABALHAR COM ARRAY/ Tirar duvida com chid

  puts "Bem vindo, digite o numero da sua conta ou digite 0 para sair"
  conta = getvalue
  if conta == 24
    puts "Bem vindo gijo!"
    menu(caixa)
  elsif conta == 10
    puts "Bem vindo champs!"
    menu(caixa)
  elsif conta == 0
    exit #quando coloquei return ele continuava chamando o menu(caixa) sozinho
  else
    puts "Nao tem conta cadastrada irmao"
    puts ""
    menu_conta
  end
end



menu_conta
