require 'string_nao_vazia'

describe 'Classes' do

  it 'be_instace_of extamente a classe' do
    expect(10).to be_instance_of(Integer)
  end

  xit 'be_instace_of extamente a classe' do
    str = StringNaoVazia.new
    expect(str).to be_instance_of(String)
  end

  it 'be_kind_of pode ser herança' do
    str = StringNaoVazia.new
    expect(10).to be_kind_of(Integer)
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
  end

  it 'respond_to String.size' do
    expect("teste").to respond_to(:size)
    expect("teste").to respond_to(:count)
  end

  it 'be_an or to be_a' do
    str = StringNaoVazia.new
    expect(10).to be_an(Integer)
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end
end
