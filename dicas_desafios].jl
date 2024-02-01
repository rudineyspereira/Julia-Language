# Dicas e desafios em Julia

# 1
function ola_mundo()
    println("Olá, mundo!")
end

# Exemplo de uso:
ola_mundo() # Output: Olá, mundo!

# 2
function print_nome(str)
    println("Meu nome completo é :", str)
end

# Exemplo de uso:
print_name("João da Silva")

# 3
function print_idade()
    idade = 25
    println("Minha idade é $idade anos.")
end
#Exemplo de uso
print_idade()

# 4
function print_altura()
    altura = 1.75
    println("Minha altura é $altura metros.")
end
# Exemplo de uso
print_altura()

# 5
function print_peso()
    peso = 70.5
    println("Meu peso é $peso kg.")
end
# Exemplo de uso
print_peso()

# 6
function idade_meses()
    idade = 25
    meses = idade * 12
    println("Sua idade em meses é $meses ")
end
# Exemplo de uso
idade_meses()

# 7
function calcula_imc(peso, altura)
    imc = peso / (altura^2)
    println("Seu índice de massa corporal é: ", imc)
end
# Exemplo de uso
calcula_imc(70, 1.75)

# 8
function print_numeros()
    numeros = collect(1:10)
    println(numeros)
end
# Exemplo de uso
print_numeros()

# 9
function print_amigos()
    amigos = ["Alice", "Bernardo", "Carlos"]
    println(amigos)
end
# Exemplo de uso
print_amigos()

# 10
function print_frutas()
    frutas = ["banana", "maçã", "laranja", "abacaxi", "uva"]
    for fruta in frutas
        println(fruta)
    end
end
# Exemplo de uso
print_frutas()

# 11
function minha_info()
    info = Dict("Nome" => "João Silva", "Idade" => 30, "Altura" => 1.75, "Peso" => 70)
    println(info)
end
# Exemplo de uso
minha_info()

# 12
function soma(a, b)
    return a + b
end
# Exemplo de uso
println(soma(2, 3))

# 13
function valor_maximo(lst)
    return maximum(lst)
end
# Exemplo de uso
lst = [1, 5, 3, 8, 2]
println(valor_maximo(lst))

# 14
function menor_valor(lista)
    menor = lista[1]
    for i in 2:length(lista)
        if lista[i] < menor
            menor = lista[i]
        end
    end
    return menor
end
# Exemplo de uso
menor_valor([1, 5, 3, 8, 2])

# 15
function media(lista)
    soma = 0
    for valor in lista
        soma += valor
    end
    return soma / length(lista)
end
# Exemplo de uso
lista = [1, 2, 3, 4, 5]
println(media(lista))

# 16
function ordenar_lista(lista)
    return sort(lista)
end
# Exemplo de uso
lista = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
nova_lista = ordenar_lista(lista)
println(nova_lista)

# 17
function string_invertida(str::AbstractString)::AbstractString
    return reverse(str)
end
# Exemplo de uso
println(string_invertida("hello world"))

# 18
function numeros_pares(numeros::Array{Int64,1})
    nums_pares = []
    for num in numeros
        if num % 2 == 0
            push!(nums_pares, num)
        end
    end
    return nums_pares
end
# Exemplo de uso
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nums_pares = numeros_pares(numeros)
println(nums_pares)

# 19
function numeros_impares(numeros::Array{Int64,1})
    lista_impares = []
    for num in numeros
        if num % 2 != 0
            push!(lista_impares, num)
        end
    end
    return lista_impares
end

# Exemplo de uso
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numeros_impares(numeros)

# 20
function produto(lista)
    prod = 1
    for i in lista
        prod *= i
    end
    return prod
end
# Exemplo de uso
lista = [2, 3, 4, 5]
println(produto(lista))

# 21
function conta_elementos(lst)
    return length(lst)
end
# Exemplo de uso
lst = [1, 2, 3, 4, 5]
conta_elementos(lst)

# 22
function lista_mediana(lista)
    n = length(lista)
    if n % 2 == 0
        return (lista[n/2] + lista[n/2 + 1])/2
    else
        return lista[(n+1)/2]
    end
end
# Exemplo de uso
lista_mediana([1,2,3,4,5,6,7])

#23
function calcular_mediana(lista)
    lista_ordenada = sort(lista)
    tamanho = length(lista_ordenada)

    if isodd(tamanho)  # Lista com tamanho ímpar
        mediana = lista_ordenada[(tamanho ÷ 2) + 1]
    else  # Lista com tamanho par
        indice1 = tamanho ÷ 2
        indice2 = indice1 + 1
        mediana = (lista_ordenada[indice1] + lista_ordenada[indice2]) / 2
    end

    return mediana
end
# Exemplo de uso:
numeros = [2.5, 1.3, 4.7, 3.1, 2.8]
resultado = calcular_mediana(numeros)
println("A mediana é: ", resultado)

#24
function calcular_moda(lista)
    contagem = Dict{Float64, Int64}()

    for numero in lista
        if haskey(contagem, numero)
            contagem[numero] += 1
        else
            contagem[numero] = 1
        end
    end

    max_contagem = maximum(values(contagem))
    moda = Float64[]

    for (numero, count) in contagem
        if count == max_contagem
            push!(moda, numero)
        end
    end

    return moda
end
# Exemplo de uso:
numeros = [2.5, 1.3, 4.7, 3.1, 2.8, 4.7, 2.5]
resultado = calcular_moda(numeros)
println("A(s) moda(s) é(são): ", resultado)

#25
using Statistics
function calcular_desvio_padrao(lista)
    desvio_padrao = std(lista)
    return desvio_padrao
end
# Exemplo de uso
numeros = [2.5, 1.3, 4.7, 3.1, 2.8]
resultado = calcular_desvio_padrao(numeros)
println("O desvio padrão é: ", resultado)


#26
using Statistics

function calcular_variancia(lista)
    variancia = var(lista)
    return variancia
end
# Exemplo de uso
numeros = [2.5, 1.3, 4.7, 3.1, 2.8]
resultado = calcular_variancia(numeros)
println("A variância é: ", resultado)


#27
function coeficiente_variacao(lista)
    media = mean(lista)
    desvio_padrao = std(lista)
    coeficiente_variacao = desvio_padrao / media
    return coeficiente_variacao
end

#28
function square_list(lst)
    return [x^2 for x in lst]
end
# Exemplo de uso
println(square_list([1, 2, 3, 4, 5])) # Saída: [1, 4, 9, 16, 25]

#29
function cubo(lista)
    nova_lista = []
    for i in lista
        push!(nova_lista, i^3)
    end
    return nova_lista
end
# Exemplo de uso
lista = [1, 2, 3, 4, 5]
nova_lista = cubo(lista)
println(nova_lista) # Saída: [1, 8, 27, 64, 125]

#30
function power_list(lst::Array{Float64,1}, power::Float64)::Array{Float64,1}
    return [x^power for x in lst]
end
# Exemplo de uso:
lst = [1.0, 2.0, 3.0, 4.0]
power = 2.0
nova_lst = power_list(lst, power)
println(nova_lst) # Saída: [1.0, 4.0, 9.0, 16.0]

#31
function numeros_positivos(numeros::Array{Float64,1})
    positivo = []
    for num in numeros
        if num > 0
            push!(positivo, num)
        end
    end
    return positivo
end
# Exemplo de uso:
numeros = [-2.5, 3.7, 0, -1, 5, -8.2, 10]
numeros_positivos(numeros) # Saída: [3.7, 5, 10]

#32
function valores_negativos(lst::Array{Int64,1})
    neg_lst = []
    for i in lst
        if i < 0
            push!(neg_lst, i)
        end
    end
    return neg_lst
end
# Exemplo de uso:
lst = [1, -2, 3, -4, 5]
neg_lst = valores_negativos(lst)
println(neg_lst) # Saída: [-2, -4]

#33
function valores_distintos(lst)
    return unique(lst)
end
# Exemplo de uso:
lst = [1, 2, 3, 2, 4, 5, 3]
distintos_lst = valores_distintos(lst)
println(distintos_lst) # Saída: [1, 2, 3, 4, 5]

#34
function valores_unicos(numeros::Array{Int64,1})
    valores_unc = unique(numeros)
    return valores_unc
end
# Exemplo de uso:
numeros = [1, 2, 3, 2, 4, 5, 3, 6, 1]
numeros_unicos = valores_unicos(numeros)
println(numeros_unicos) # Saída: [1, 2, 3, 4, 5, 6]

#35
function elementos_comuns(lista1, lista2)
    comum = []
    for elemento in lista1
        if elemento in lista2
            push!(comum, elemento)
        end
    end
    return comum
end
# Exemplo de uso:
lista1 = [1, 2, 3, 4, 5]
lista2 = [3, 4, 5, 6, 7]
elementos_comuns(lista1, lista2) # Returns [3, 4, 5]

#36
function mistura_listas(lista1::Array, lista2::Array)
    lista_misturada = unique(vcat(lista1, lista2))
    return lista_misturada
end
# Exemplo de uso:
lista1 = [1, 2, 3, 4]
lista2 = [3, 4, 5, 6]
lista_misturada = mistura_listas(lista1, lista2)
println(lista_misturada) # Output: [1, 2, 3, 4, 5, 6]

#37
function estah_ordenado(lst::Array{Int,1})
    for i in 1:length(lst)-1
        if lst[i] > lst[i+1]
            return false
        end
    end
    return true
end
# Exemplo de uso:
estah_ordenado([1,3,2,7,4])

#38
function ordem_decrescente(lst::Array{Int,1})
    for i in 1:length(lst)-1
        if lst[i] < lst[i+1]
            return false
        end
    end
    return true
end
# Exemplo de uso:
ordem_decrescente([7,4,3,2,1])

#39
function tem_ordenamento(lst::Array{Int,1})
    if length(lst) <= 1
        return true
    end
    eh_crescente = true
    eh_decrescente = true
    for i in 2:length(lst)
        if lst[i] < lst[i-1]
            eh_crescente = false
        elseif lst[i] > lst[i-1]
            eh_decrescente = false
        end
    end
    return eh_crescente || eh_decrescente
end

#40
function arredonda_lista(lst::Array{Float64,1})
    return round.(lst)
end
# Exemplo de uso:
lst = [1.2, 2.7, 3.5, 4.9]
arredonda_lista(lst) # returns [1.0, 3.0, 4.0, 5.0]

#41
function arredonda_lista_casas_decimais(lst::Array{Float64,1}, decimais::Int)
    return [round(x, digits=decimais) for x in lst]
end
# Exemplo de uso:
lst = [1.2345, 2.3456, 3.4567]
arredonda_lista_casas_decimais(lst, 2) # Saída: [1.23, 2.35, 3.46]

#42
function formatar_valores(valores)
    valores_formatados = []    
    for valor in valores
        valor_formatado = "R$(round(valor, digits=2))"
        push!(valores_formatados, valor_formatado)
    end
    
    return valores_formatados
end
# Exemplo de uso:
numeros = [10.5, 20.75, 30.0]
numeros_formatados = formatar_valores(numeros)
println(numeros_formatados) # Output: [""R$10.5"", ""R$20.75"", ""R$30.0""]

#43
function sort_strings(strings::Vector{String})::Vector{String}
    return sort(strings)
end
# Exemplo de uso:
strings = ["maçã","banana","morango","laranja"]
sorted_strings = sort_strings(strings)
println(sorted_strings) # Saída: ["banana","laranja","maçã","morango"]

#44
function reverse_alpha(list::Array{String,1})
    return sort(list, rev=true)
end
# Exemplo de uso:
list = ["maçã","banana","morango","laranja"]
reverse_alpha(list) # Saída: ["morango","maçã","laranja","banana"]

#45
function order_strings_by_length(strings::Array{String,1})
    return sort(strings, by=length)
end
# Exemplo de uso:
strings = ["maçã","banana","morango","laranja"]
ordered_strings = order_strings_by_length(strings)
println(ordered_strings) # Saída: 

#46
function reverse_order(strings::Array{String,1})
    sorted_strings = sort(strings, by=length, rev=true)
    return sorted_strings
end
# Exemplo de uso:
strings = ["maçã","banana","morango","laranja"]
reverse_order(strings) # Saída: 

#47
function upper_strings(strings::Vector{String})
    return [uppercase(s) for s in strings]
end
# Exemplo de uso:
strings = ["olá", "mundo", "julia"]
upper_strings(strings) # returns ["OLÁ", "MUNDO", "JULIA"]

#48
function lower_case_strings(strings::Vector{String})::Vector{String}
    return [lowercase(s) for s in strings]
end
# Exemplo de uso:
strings = ["Olá", "Mundo", "julia", "FUNÇÃO"]
lower_case_strings(strings) # Saída:

#49
function replace_vowels(str::AbstractString)::AbstractString
    vowels = Dict('a' => '4', 'e' => '3', 'i' => '1', 'o' => '0', 'u' => '5')
    new_str = ""
    for char in str
        if char in keys(vowels)
            new_str *= vowels[char]
        else
            new_str *= char
        end
    end
    return new_str
end
# Exemplo de uso:
replace_vowels("olá mundo") # Saída: 

#50
function is_palindrome(str::AbstractString)
    str == reverse(str)
end
# Exemplo de uso:
println(is_palindrome("racecar")) # true
println(is_palindrome("hello")) # false

#51
function sao_anagramas(str1, str2)
    # Remover espaços em branco e converter para letras minúsculas
    str1 = lowercase(join(filter(!isspace, str1)))
    str2 = lowercase(join(filter(!isspace, str2)))
    # Verificar o comprimento das strings
    if length(str1) != length(str2)
        return false
    end
    # Criar dicionários para contar a ocorrência de cada letra
    dict1 = Dict{Char, Int}()
    dict2 = Dict{Char, Int}()
    # Contar a ocorrência de cada letra na primeira string
    for char in str1
        if haskey(dict1, char)
            dict1[char] += 1
        else
            dict1[char] = 1
        end
    end
    # Contar a ocorrência de cada letra na segunda string
    for char in str2
        if haskey(dict2, char)
            dict2[char] += 1
        else
            dict2[char] = 1
        end
    end
    # Verificar se os dicionários são iguais
    return dict1 == dict2
end
# Exemplo de uso:
string1 = "amor"
string2 = "roma"
resultado = sao_anagramas(string1, string2)
println("As strings são anagramas? ", resultado)

#52
function reverse_words(str::AbstractString)::AbstractString
    words = split(str)
    reversed_words = reverse(words)
    return join(reversed_words, " ")
end
# Exemplo de uso:
reverse_words("Olá mundo") # "world hello"
reverse_words("Julia é incrível") # "awesome is Julia"

#53
#function remove_vowels(str::AbstractString)::AbstractString
#    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
#    new_str = ""
#    for char in str
#        if !(char in vowels)
#            new_str *= char
#        end
#    end
#    return new_str
#end
# Exemplo de uso:
# println(remove_vowels("Olá Mundo!")) # Saída: 
# println(remove_vowels("Julia is awesome")) # Saída: 

#53
function remove_repeated_chars(str::AbstractString)::AbstractString
    unique_chars = Set(str)
    return join(unique_chars)
end
# Exemplo de uso:
println(remove_repeated_chars("banana")) # Saída: 
println(remove_repeated_chars("olá mundo")) # Saída: 

#55
#function alphanum_string(str::AbstractString)::AbstractString
#    new_str = ""
#    for c in str
#        if isalnum(c)
#            new_str *= c
#        end
#    end
#    return new_str
#end
# Exemplo de uso:
# println(alphanum_string("Olá, Mundo! 123...")) # Saída : 

#55
#function remove_alphanumeric(str::AbstractString)::AbstractString
#    new_str = ""
#    for c in str
#        if !isalnum(c)
#            new_str *= c
#        end
#    end
#    return new_str
#end
# Exemplo de uso:
#println(remove_alphanumeric("Olá, mundo!")) # Saída : 
#println(remove_alphanumeric("12345")) # Saída : 
#println(remove_alphanumeric("Olá123")) # Saída : 

#56
function extract_digits(str::AbstractString)::AbstractString
    digits = ""
    for char in str
        if isdigit(char)
            digits *= char
        end
    end
    return digits
end
# Exemplo de uso:
extract_digits("abc123def456") # Saída "123456"

#57
function order_words_by_length(str::AbstractString)::AbstractString
    words = split(str)
    sorted_words = sort(words, by=length)
    return join(sorted_words, " ")
end
# Exemplo de uso:
order_words_by_length("A rápida raposa marrom pula sobre o cachorro preguiçoso.")

#58
function reverse_word_order(string)
    words = split(string)
    sorted_words = sort(words, by = x -> length(x), rev = true)
    return join(sorted_words, "" "")
end
# Exemplo de uso:
reverse_word_order("A rápida raposa marrom pula sobre o cachorro preguiçoso.")

