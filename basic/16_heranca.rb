class Pessoa
    attr_accessor :nome, :email
end

# Herança de pessoa
class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end 
end

# Herança de Pessoa
class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
        puts ("Pagando fornecedor....")
    end 
end

# ----------------------------------------
p1 = Pessoa.new
# Setters
p1.nome = "Jackson"
p1.email = "jackson@gmail.com"
# Getters
puts p1.nome
puts p1.email
puts ("--------------------")

# ----------------------------------------
p2 = PessoaFisica.new
# Setters
p2.nome = "Matheus"
p2.email = "joao@joao.com"
p2.cpf = "9989898"
# Getters 
puts p2.nome
puts p2.email 
puts p2.cpf
puts ("--------------------")


# ----------------------------------------
p3 = PessoaJuridica.new
# Setters
p3.nome = "Matheus"
p3.email = "joao@joao.com"
p3.cnpj = "123456789"
# Getters 
puts p3.nome
puts p3.email 
puts p3.cnpj