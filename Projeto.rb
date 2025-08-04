loop do
  puts "Escreva o nome do produto(Obrigatório):"
  produto = gets.chomp
  if produto == ""
    puts "O nome do produto é obrigatório. Tente novamente."
      break
    end
  puts "Escreva a descrição do produto(Opcional):"
  decricao = gets.chomp
  puts "Qual a quantidade inicial em estoque? (Obrigatório)"
  quantidade = gets.chomp
  if quantidade == ""
    puts "A quantidade inicial é obrigatória. Tente novamente"
    break
  end
  puts "Qual o preço do produto? (Opcional)"
  preco = gets.chomp.to_f
  break
end
