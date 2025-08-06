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
    end
  puts "Qual o tipo de movimentação? (1 - Entrada, 2 - Saída)"
  tipo = gets.chomp.strip
   if tipo.empty? || tipo.to_i.to_s != tipo
    puts "A resposta é obrigatória. Tente novamente."
    next
  elsif tipo == "1"
    tipo = "Entrada"
  elsif tipo == "2"
    tipo = "Saída"
  else 
    puts "Opção inválida. Digite 1 para entrada e 2 para saída."
    next
  end  
 
  puts "Qual a quantidade de #{tipo.downcase}?" 
    quantidade_movimentação = gets.chomp.strip
    if quantidade_movimentação.empty? || quantidade_movimentação.to_i.to_s != quantidade_movimentação || quantidade_movimentação.to_i <= 0 # Verifica se a quantidade de movimentação é um número inteiro positivo
      puts "A quantidade de movimentação é obrigatória e deve ser um número inteiro positivo. Tente novamente."
        next
      end
    produto_escolhido = produtos[escolha.to_i - 1] 
    qtd_mov = quantidade_movimentação.to_i 

    if tipo == "Entrada"
      produto_escolhido[:quantidade] += qtd_mov
    else
      if qtd_mov > produto_escolhido[:quantidade]
        puts "Erro: não há estoque suficiente para essa saída."
        next
      end
      produto_escolhido[:quantidade] -= qtd_mov
    end

    # Registra a movimentação (opcional)
    movimentacoes << {
      produto: produto_escolhido[:nome],
      tipo: tipo,
      quantidade: qtd_mov
    }
    puts "#{tipo} registrada com sucesso para o produto '#{produto_escolhido[:nome]}'"
    break
  end