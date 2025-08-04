puts "Escreva o nome do produto(Obrigatório):"
produto = gets.chomp
puts "Escreva a descrição do produto(Opcional):"
decricao = gets.chomp
puts "Qual a quantidade inicial em estoque? (Obrigatório)"
quantidade = gets.chomp
puts "Qual o preço do produto? (Opcional)"
preco = gets.chomp.to_f

loop do
  puts produto
  if produto == ""
    puts "O campo tem de ser obrigatoriamente preenchido"
    break
  end
  puts decricao
  puts quantidade
  if quantidade == ""
    puts "O campo tem de ser obrigatoriamente preenchido"
    break
  end
end