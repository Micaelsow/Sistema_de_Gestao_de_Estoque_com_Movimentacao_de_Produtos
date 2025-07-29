puts "Escreva o nome do produto(Obrigatório):"
produto = gets.chomp
puts "Escreva a descrição do produto(Opcional):"
decricao = gets.chomp
puts "Qual a quantidade inicial em estoque? (Obrigatório)"
quantidade = gets.chomp.to_i
puts "Qual o preço do produto? (Opcional)"
preco = gets.chomp.to_f

puts "Produto: #{produto}"
puts "Descrição: #{decricao}"
puts "Quantidade em estoque: #{quantidade}"
