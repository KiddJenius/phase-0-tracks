require 'sqlite3'

complete_stats = SQLite3::Database.new("stats.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lineup(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    bat_order INT,
    bat_avg INT,
    position VARCHAR(255),
    available BOOLEAN 
  )
SQL

complete_stats.execute(create_table_cmd)