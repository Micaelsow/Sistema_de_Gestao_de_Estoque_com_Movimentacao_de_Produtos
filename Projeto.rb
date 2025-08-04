produtos = []

loop do
  puts "Escreva o nome do produto(Obrigatório):"
  nome = gets.chomp.strip
  if nome.empty? # Verifica se o nome está vazio
    puts "O nome do produto é obrigatório. Tente novamente."
      next
    end

  puts "Escreva a descrição do produto(Opcional):"
  descricao = gets.chomp.strip

  puts "Qual a quantidade inicial em estoque? (Obrigatório)"
  quantidade = gets.chomp.strip # Lê a quantidade e remove espaços em branco
  if quantidade.empty? || quantidade.to_i.to_s != quantidade # Verifica se a quantidade é um número inteiro
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
  }# Cria um hash com os dados do produto

  produtos << produto # Adiciona o produto ao array
puts "Produto cadastrado com sucesso"

  puts "Deseja cadastrar outro produto? (s/n)"
  resposta = gets.chomp.strip.downcase # Converte a resposta para minúsculas
  break if resposta != 's' # Se a resposta for diferente de 's', sai do loop
end

produtos.each_with_index do |produto, index|
  puts "Produto #{index + 1}"
  puts " Nome: #{produto[:nome]}"
  puts " Descrição: #{produto[:descricao].empty? ? 'Sem descrição' : produto[:descricao]}"
  puts " Quantidade em estoque: #{produto[:quantidade]}"

end
