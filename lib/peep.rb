require 'pg'

class Peep
  def self.all
      connection = PG.connect(dbname: 'chitter')
      result = connection.exec('SELECT * FROM chitter')
      result.map { |peep| peep['message'] }
    end
  end
end
