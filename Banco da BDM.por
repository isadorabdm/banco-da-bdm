programa {
  funcao inicio() {
    real senha, login, senha2
    real contador = 0
    inteiro menu
    real saque, saldo = 0
    real deposito
    cadeia extrato = ""
    real investimento, rendimento
    inteiro meses
    caracter simnao
    caracter enter

    escreva("|------------ BANCO DA BDM ------------|\n")
    escreva("|LOGIN: ")
    leia(login)
    escreva("|SENHA: ")
    leia(senha)
    
    se (login == 22403450 e senha == 123) {
      enquanto (contador <= 1 e login == 22403450 e senha == 123) {
        contador = contador + 1
        limpa()
        escreva("|LOGIN CONCLUÍDO COM SUCESSO! \n\n")

        enquanto (verdadeiro) {
          escreva("|------------ DIGITE SUA ESCOLHA ------------|\n")
          escreva("|1: SAQUE\n")
          escreva("|2: DEPÓSITO\n")
          escreva("|3: SALDO\n")
          escreva("|4: SAIR\n")
          escreva("|5: EXTRATO\n")
          escreva("|6: INVESTIMENTO\n")
          escreva("OPÇÃO --> ")
          leia(menu)
          limpa()

          enquanto (menu != 1 e menu != 2 e menu != 3 e menu != 4 e menu != 5 e menu != 6) {
            escreva("|OPÇÃO INVÁLIDA! ")
            leia(menu)
          }

          escolha(menu) {
            caso 1:
              escreva("Digite sua senha: ")
              leia(senha2)
              enquanto (senha2 != senha) {
                escreva("SENHA INCORRETA, TENTE NOVAMENTE: ")
                leia(senha2)
              }
              escreva("DIGITE O VALOR DO SAQUE: ")
              leia(saque)
              se (saque <= saldo e saque > 0) {
                saldo = saldo - saque
                escreva("|SAQUE REALIZADO COM SUCESSO \n|NOVO SALDO: R$" + saldo, "\n")
                extrato = extrato + "SAQUE------------R$" + saque + "\n"
              } senao {
                escreva("|VALOR INSUFICIENTE! \n")
              }
              pare

            caso 2:
              escreva("Digite sua senha: ")
              leia(senha2)
              enquanto (senha2 != senha) {
                escreva("SENHA INCORRETA, TENTE NOVAMENTE: ")
                leia(senha2)
              }
              escreva("DIGITE O VALOR DO DEPÓSITO: ")
              leia(deposito)
              se (deposito < 0) {
                enquanto (deposito < 0) {
                  escreva("|VALOR INVÁLIDO, TENTE NOVAMENTE: ")
                  leia(deposito)
                }
              }
              saldo = saldo + deposito
              extrato = extrato + "DEPÓSITO------------R$" + deposito + "\n"
              escreva("|DEPÓSITO CONCLUÍDO COM SUCESSO!\n")
              escreva("|NOVO SALDO: R$" + saldo, "\n")
              pare

            caso 3:
              escreva("Deseja visualizar o saldo? (S para SIM e N para NÃO): ")
              leia(simnao)
              se (simnao == "s" ou simnao == "S") {
                escreva("|SALDO ATUAL: R$" + saldo, "\n")
              }
              pare

            caso 4:
              escreva("|APERTE 'ENTER' PARA CONTINUAR: \n")
              leia(enter)
              pare

            caso 5:
              escreva(extrato)
              pare

            caso 6:
              escreva("DIGITE O VALOR QUE DESEJA INVESTIR: ")
              leia(investimento)
              se (investimento > saldo) {
                escreva("SALDO INSUFICIENTE!!\n")
              } senao {
                escreva("INSIRA A QUANTIDADE DE MESES QUE DESEJA INVESTIR: ")
                leia(meses)
                saldo = saldo - investimento
                para (inteiro contador = 0; contador < meses; contador = contador + 1) {
                  rendimento = investimento * 1.02
                  investimento = rendimento
                }
                saldo = saldo + investimento
                escreva("O RENDIMENTO FINAL FOI DE: R$" + investimento, "\n")
              }
              pare
          }
        }
      }
    } senao {
      escreva("|LOGIN OU SENHA INCORRETOS!")
    }
  }
}