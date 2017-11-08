describe 'all', collection: true do
# pode-se utilizar tambem
# :collection como simbolo
# ou type:'colection' todas estas formas irao agrupar testes
  around(:each) do |teste|
    puts "Antes"
    teste.run
    puts "Depois"
  end
  it { expect([1, 7, 9]).to all (be_odd).and be_an(Integer) }
  it { expect(['ruby', 'rails']).to all( be_a(String).and include('r')) }
end
