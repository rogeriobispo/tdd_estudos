class Pessoa
  attr_accessor :nome, :idade
  attr_reader :status

  def feliz!
    @status = "sentindo-se Feliz!"
  end

  def triste!
    @status = "sentindo-se Triste!"
  end

  def contente!
    @status = "sentindo-se Contente!"
  end
end
