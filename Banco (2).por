programa {
  funcao inicio() {

     //variaveis
    inteiro menu
    real saque, saldo = 0, deposito, extrato
    cadeia controle, extrato

    //menu, loop
    enquanto(menu != 0){
      escreva("|======MENU======|\n")
      escreva("|Saldo = R$", saldo, "\n")
      escreva("|1. Saque        |\n")
      escreva("|2. Deposito     |\n")
      escreva("|3. Extrato      |\n")
      escreva("|0. Sair         |\n")
      escreva("|================|\n")
      escreva("Escolha:")
      leia(menu)
      limpa()

      escolha(menu){
        caso 1:
         escreva("Digite o valor para sacar: ")
         leia(saque)
         enquanto(saque < 0){
          escreva("Valor invalido! Digite novamente: \n")
          leia(saque)
         }
         se(saldo >= saque){
          saldo = saldo - saque
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar \n")
          leia(controle)
          limpa()
          extrato = extrato + "Saque---------R$" + saque + "\n"
         }

         senao{
          escreva("Saldo insuficiente!\n")
          escreva("Aperte ENTER para continuar ")
          leia(controle)
          limpa()
         }

        pare

        caso 2:
         escreva("Digite o valor para depositar: \n")
         leia(deposito)
         enquanto(deposito < 0){
          escreva("Valor invalido! Digite novamente: \n")
          leia(deposito)
         }

         saldo = saldo + deposito
         extrato = extrato + "Deposito---------R$" + deposito + "\n"
         escreva("Deposito realizado com sucesso!\n")
         escreva("Aperte ENTER para continuar \n")
         leia(controle)
         limpa()

        pare

        caso 3:
        escreva("=========EXTRATO========\n", extrato)
        pare

      }//fim do escolha
    }//fim do enquanto

          


    
    
    
    
    
    
    
    







  }
}
