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

def create_player(complete_stats, player_name, order, avg, field_pos, can_play)
	complete_stats.execute("INSERT INTO lineup (name, bat_order, bat_avg, position, available) VALUES (?,?,?,?,?)", [player_name, order, avg, field_pos, can_play])
end

create_player(complete_stats,"Joe Antoun", 7, 0.414, "right field", "true")