require 'pg'

def setup_test_database
  p "setting up test"
  connection = PG.connect(dbname: 'chitter_test')
  connection.exec("TRUNCATE peeps;")
  connection.exec("INSERT INTO peeps (person, message) VALUES('User', 'This is a peep!');")
end

def add_row_to_test_database
  p "adding row"
  connection = PG.connect(dbname: 'chitter')
  connection.exec("TRUNCATE TABLE peeps;")
  connection.exec("INSERT INTO peeps (person, message) VALUES('User', 'This is a peep!');")
end
