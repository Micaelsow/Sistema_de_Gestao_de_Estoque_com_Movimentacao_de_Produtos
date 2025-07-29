puts "Escreva o nome do produto(Obrigatório):"
produto = gets.chomp
if produto == ""
  puts "O campo tem de ser obrigatoriamente preenchido"
  exit
else
end
puts "Escreva a descrição do produto(Opcional):"
decricao = gets.chomp
puts "Qual a quantidade inicial em estoque? (Obrigatório)"
quantidade = gets.chomp

puts "Qual o preço do produto? (Opcional)"
preco = gets.chomp.to_f

puts "Produto: #{produto}"
puts "Descrição: #{decricao}"
puts "Quantidade em estoque: #{quantidade}"
