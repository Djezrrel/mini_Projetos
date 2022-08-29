print((f"Seu peso é {Peso}".title()))


#Resultado
Resultado = Peso/(Altura**Altura)
print(f"Seu imc é {Resultado:.1f}".title())

#condições
if Resultado <18.5:
    print("abaixo do peso".title())
elif Resultado >= 18.5 and Resultado <= 24.9:
    print("Normal")
elif Resultado >= 25.0 and Resultado <= 29.9:
    print("SobrePeso")
elif Resultado >= 30.0 and Resultado <= 39.9:
    print("Obesidade")
elif Resultado >= 40.0:
    print("Obesidade Grave")

#para criar essa tabela de imc ultilizei um print no Cabeçalho para especificar oque é junto com uma opção de modificar o titulo para deixa-lo maiusculo
#Altura,ultilizei float para usar numeros decimais junto com o botão input para a pessoa digitar o valor de entrada é logo apos um print para este valor de entrada ser mostrado,mostrando a altura da pessoa
#estabeleci as mesmas formas para o Peso no qual ira ser mostrado da mesma forma que á Altura
#indo para o final criei uma variavel Resultado no qual Resultado vai ser meu peso DIVIDIDO POR ALTURA elevado ao Quadrado,que ira sair o valor dela com uma formatação para sair so com uma casa decimal apos a virgula(ponto)
#E no fim criei umas condições para, SE resultado for ou nao for igual condição demostra CONDIÇÂO é oque diz.
