//função para cadastrar Cliente
procedimento CadastroCliente()
var nome: caractere
   cpf: caractere
   idade: inteiro

inicio
   escreva("Digite o nome do cliente:")
   leia(nome)
   escreva("Digite o CPF do cliente:")
   leia(cpf)
   escreva("Digite a idade do cliente:")
   leia(idade)

   vetor nomes [contClientes] <- nome
   vetor cpfs [contClientes] <- cpf
   vetor idades [contClientes] <- idade
   contClientes <- contClientes + 1
fimprocedimento


//função para cadastrar destino
procedimento CadastroDestino()
var nomeDestino, cidade, pais: caractere
   valor: real

inicio
   escreva("Digite o nome do destino:")
   leia(nomeDestino)
   escreva("Digite a cidade do destino:")
   leia(cidade)
   escreva("Digite o pais do destino:")
   leia(pais)
   escreva("Digite o valor da viagem:")
   leia(valor)

   vetor nomesDestino[totalDestinos] <- nomeDestino
   vetor cidades[totalDestinos] <- cidade
   vetor paises[totalDestinos] <- pais
   vetor valores[totalDestinos] <- valor
   totalDestinos <- totalDestinos + 1
fimprocedimento


//função para consultar Cliente
procedimento ConsultaCliente()
var cpfConsulta: caractere
   i: inteiro
   confirm: inteiro
inicio
   escreva("Digite o CPF do cliente que deseja consultar:")
   leia(cpfConsulta)
   para i de 1 ate contClientes faca
   caso cpfs[i] = caractere cpfConsulta
      escreva("Cliente encontrado:")
      escreva("Nome: ", vetor nomes[i])
      escreva("CPF: ", vetor cpfs[i])
      escreva("Idade: ", vetor idades[i])
      confirm <-1
   fimescolha
fimpara
se confirm = 1 entao
   escreva("Consulta finalizada.   ")
senao
   escreva("Cliente nao encontrado.")
fimse
fimprocedimento


//função para consultar destino
procedimento ConsultaDestino()
var nomeConsulta: caractere
   i: inteiro
   confirm: inteiro
inicio
   escreva("Digite o nome do destino que deseja consultar:")
   leia(nomeConsulta)

   para i de 1 ate totalDestinos faca
   caso nomesDestino[i] = nomeConsulta
      escreva("Destino encontrado:")
      escreva("Nome: ", vetor nomesDestino[i])
      escreva("Cidade: ",vetor cidades[i])
      escreva("Pais: ",vetor paises[i])
      escreva("Valor da viagem: ",vetor valores[i])
      confirm<-1
   fimescolha
fimpara
se confirm = 1 entao
   escreva("Consulta finalizada.   ")
senao
   escreva("Destino nao encontrado.")
fimse
fimprocedimento

//inicio do algoritmo
algoritmo "agViagem"
// variavel do inicio
var opt: inteiro
    contClientes: inteiro
    totalDestinos: inteiro

inicio

   // Vetores para armazenar os dados dos clientes
   vetor nomes:[1..10] de caractere
   vetor cpfs: [1..10] de caractere
   vetor idades: [1..10] de inteiro
   inteiro contClientes <- 0

   // Vetores para armazenar os dados dos destinos
   vetor nomesDestino: [0..10] de caractere
   vetor cidades: [0..10] de caractere
   vetor paises: [0..10] de caractere
   vetor valores: [0..10] de real
   inteiro totalDestinos <- 0

   opt <-0
   
   //MENU
   repita
      escreva("Menu:   ")
      escreva("1 - Cadastrar cliente   ")
      escreva("2 - Cadastrar destino   ")
      escreva("3 - Consultar cliente   ")
      escreva("4 - Consultar destino   ")
      escreva("5 - Sair   ")
      escreva("Digite a opcao desejada:   ")
      leia(opt)

      escolha opt
      caso 1
         CadastroCliente()
      caso 2
         CadastroDestino()
      caso 3
         ConsultaCliente()
      caso 4
         ConsultaDestino()
      caso 5
         escreva("Saindo do programa...")
      outrocaso
         escreva("Opcao invalida. Digite novamente.")
      fimescolha

   ate opt = 5

fimalgoritmo

