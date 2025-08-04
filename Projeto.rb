produtos = []

loop do
  puts "Escreva o nome do produto(Obrigatório):"
  nome = gets.chomp.strip
  if nome.empty?
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

  produto = {
    nome: nome,
    descricao: descricao,
    quantidade: quantidade.to_i,
    preco: preco
  }

  produtos << produto
puts "Produto cadastrado com sucesso"

break
end

produtos.each_with_index do |produto, index|
  puts "Produto #{index + 1}"
  puts " Nome: #{produto[:nome]}"
  puts " Descrição: #{produto[:descricao].empty? ? 'Sem descrição' : produto[:descricao]}"
  puts " Quantidade em estoque: #{produto[:quantidade]}"

end
