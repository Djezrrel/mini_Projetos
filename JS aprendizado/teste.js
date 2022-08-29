lert('Inde de Massa Corporal: IMC')
                        var nome = prompt('Digite seu nome')
                         var altura = prompt('Digite sua altura: ')
                         var peso = prompt('Digte seu peso: ')

                         altura = parseFloat(altura)
                         peso = parseFloat(peso)
                         
                         altura = altura/100

                         IMC_calculo = peso/(altura*altura)

                         if(IMC_calculo < 16){
                            classificacao = 'Baixo peso muito grave';
                            } else if(IMC_calculo  >= 16 && IMC_calculo  <= 16.99){
                            classificacao = 'Baixo peso grave';
                            } else if(IMC_calculo  >= 17 && IMC_calculo  <= 18.49){
                            classificacao = 'Baixo peso';
                            } else if(IMC_calculo  >= 18.50 && IMC_calculo  <= 24.99){
                            classificacao = 'Peso normal';
                            } else if(IMC_calculo  >= 25 && IMC_calculo  <= 29.99){
                            classificacao = 'Sobrepeso';
                            } else if(IMC_calculo  >= 30 && IMC_calculo  <= 34.99){
                            classificacao = 'Obesidade grau I';
                            } else if(IMC_calculo  >= 35 && IMC_calculo  <= 39.99){
                            classificacao = 'Obesidade grau II';
                            } else { //se não estiver enquadrado em nenhum critério acima, imc só pode ser maior que 40
        
                            classificacao = 'Obesidade grau III';
                            }
                            document.write(nome + ' possui índice de massa corporal igual a ' + IMC_calculo  + ' sendo classificado como: ' + classificacao)
                         
            
