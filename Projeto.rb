produtos = []
movimentacoes = []
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

loop do
puts "Escolha um produto para registrar a movimentação:"
   produtos.each_with_index do |produto, index|
    puts "#{index + 1} - #{produto[:nome]}"
  end

  escolha = gets.chomp.strip
  if escolha.empty? || escolha.to_i.to_s != escolha || escolha.to_i < 1 || escolha.to_i > produtos.size # Verifica se a caixa de entrada está vazia, ou se o número condiz com as opções disponíveis.
    puts "Escolha inválida. Tente novamente."
    next
  else
    break
  end
end

loop do
  puts "Qual o tipo de movimentação? (1 - Entrada, 2 - Saída)"
  tipo = gets.chomp.strip
   if tipo.empty? || tipo.to_i.to_s != tipo
    puts "A resposta é obrigatória. Tente novamente."
      next
   elsif tipo == "1"
    tipo = "Entrada"
    break
   elsif tipo == "2"
    tipo = "Saída"
    break
   else 
    puts "Opção inválida. Digite 1 para entrada e 2 para saída."
    next
  end  
end

loop do 
  puts "Qual a quantidade de #{tipo.downcase}?" 
end
  
