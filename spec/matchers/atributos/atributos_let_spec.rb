require 'pessoa'

describe 'Atributos' do
  let(:pessoa) { Pessoa.new } # 'e carregada apenas quando utilizada 1 vez'

  it 'have_attributes' do
    pessoa.nome = 'Rogerio'
    pessoa.idade = 20
    expect(pessoa).to have_attributes(nome:starting_with('R'), idade: (be >=20))
  end


  it 'have_attributes' do
    pessoa.nome = 'Rodrigo'
    pessoa.idade = 25
    expect(pessoa).to have_attributes(nome:starting_with('R'), idade: (be >=20))
  end
end
