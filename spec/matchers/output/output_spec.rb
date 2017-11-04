describe 'Matcher output' do
  it { expect{puts "Rogerio"}.to output.to_stdout }
  it { expect{puts "Rogerio bispo"}.to output(/Rogerio/).to_stdout }
  it { expect{print "Rogerio"}.to output("Rogerio").to_stdout }


  it { expect{warn "Rogerio"}.to output.to_stderr }
  it { expect{warn "Rogerio bispo"}.to output(/Rogerio/).to_stderr }
  it { expect{warn "Rogerio"}.to output("Rogerio\n").to_stderr }
end
