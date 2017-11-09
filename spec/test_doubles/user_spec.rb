describe 'Test Double' do
  it 'does somenthing' do
    abc = double('User')
    allow(abc).to receive_messages(name: 'Rogerio', password: 'secret')
    allow(abc).to receive(:address).and_return('Jerusalem')
    puts abc.address
    puts abc.name
  end
end
