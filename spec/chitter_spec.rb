require 'pg'
require 'chitter'


describe Peeps do
  describe '.all' do
    it 'returns all the peeps that have been submitted' do
    connection = PG.connect(dbname: 'chitter_test')

    peeps = Peeps.all

    expect(peeps).to include({person: 'User', message: 'This is a peep!'})
    end
  end
end
