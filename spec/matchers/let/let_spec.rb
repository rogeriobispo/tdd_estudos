$counter = 0 # variavel global

describe "let" do
  let(:count) { $counter += 1 }

  it "memoriza o valor" do
    expect(count).to eq(1) # 1a Vez
    expect(count).to eq(1) # busca do cash nao executa let novamente
  end
  it "nao e cacheado entre os testes" do
    expect(count).to eq(2)
  end
end
