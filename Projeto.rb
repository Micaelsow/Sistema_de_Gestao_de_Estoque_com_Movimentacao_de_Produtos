loop do
  puts "Escreva o nome do produto(Obrigatório):"
  produto = gets.chomp.strip
  if produto == ""
    puts "O nome do produto é obrigatório. Tente novamente."
      next
    end
  puts "Escreva a descrição do produto(Opcional):"
  descricao = gets.chomp.strip
  puts "Qual a quantidade inicial em estoque? (Obrigatório)"
  quantidade = gets.chomp.strip
  if quantidade.empty? || quantidade.to_i.to_s != quantidade
    puts "A quantidade inicial é obrigatória e deve ser um número inteiro. Tente novamente"
    next
  end
  puts "Qual o preço do produto? (Opcional)"
  preco = gets.chomp.to_f
  break
end
