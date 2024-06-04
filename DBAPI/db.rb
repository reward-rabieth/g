require 'pg'
require 'json'

# Hard-coded because I have only one database, one user
DB = PG::Connection.new(dbname: 's', user: 's')

class DBAPI

	# prefix all functions with this schema name
  def initialize(schema)
    @schema = schema
  end

  def a(func, *params)

    # create argument string: "()" or "($1)" or "($1,$2)" etc.
    qs = '(%s)' % (1..params.size).map {|i| "$#{i}"}.join(',')

    # create SQL query combining @schema, function, argument string
		sql = "select ok, js from #{@schema}.#{func}#{qs}"

    # execute query with its parameters, saving first/only row in r
    r = DB.exec_params(sql, params)[0]

    # return array of: [boolean ok, result in symbol-key hash/array]
    [
      (r['ok'] == 't'),
      JSON.parse(r['js'], symbolize_names: true)
    ]
  end
end

