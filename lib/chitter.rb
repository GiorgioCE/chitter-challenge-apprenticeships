require 'pg'

class Peeps

  def self.person(person)
    p person[0]
    person[0] == "@" ? person : person.prepend("@")
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
  connection = PG.connect(dbname: 'chitter_test')
else
  connection = PG.connect(dbname: 'chitter')
end
    result = connection.exec("SELECT * FROM peeps")
    result.map {|peeps|
      {person: peeps['person'], message: peeps['message']}}
  end

  def self.peep_add(person, message)
    if ENV['ENVIRONMENT'] == 'test'
  connection = PG.connect(dbname: 'chitter_test')
else
  connection = PG.connect(dbname: 'chitter')
end
connection.exec("INSERT INTO peeps (person, message) VALUES('#{person(person)}', '#{message}')")
end
end
