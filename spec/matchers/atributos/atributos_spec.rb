require 'pessoa'

describe 'Atributos' do
  before(:each) do
    @pessoa = Pessoa.new
    @pessoa.nome = 'Sem nome'
    puts ">>>>>> #{@pessoa.nome}"
  end

  after(:each) do
    puts ">>>>>> #{@pessoa.nome}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'Rogerio'
    @pessoa.idade = 20
    expect(@pessoa).to have_attributes(nome:starting_with('R'), idade: (be >=20))
  end


  it 'have_attributes' do
    @pessoa.nome = 'Rodrigo'
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome:starting_with('R'), idade: (be >=20))
  end
end
