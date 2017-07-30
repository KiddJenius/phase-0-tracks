require 'sqlite3'

complete_stats = SQLite3::Database.new("stats.db")
# complete_stats.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lineup(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)UNIQUE,
    bat_order INT,
    position VARCHAR(255),
    available BOOLEAN
  )
SQL

complete_stats.execute(create_table_cmd)

def create_player(complete_stats, player_name, order, avg, field_pos, can_play)
	complete_stats.execute("INSERT OR IGNORE INTO lineup (name, bat_order, bat_avg, position, available) VALUES (?,?,?,?,?)", 
	[player_name, order, avg, field_pos, can_play])
end

# create_player(complete_stats,"Joe Antoun", 0.414, "right field", "true")
# create_player(complete_stats,"Mike Rogers", 0.389, "catcher", "true")


def batting_avg(complete_stats, player_name)
	average = complete_stats.execute("SELECT bat_avg FROM lineup WHERE name=(?)",[player_name])
	inner_average = average[0]
	puts "#{player_name}'s batting average is #{inner_average[0]}"
end

def position(complete_stats, player_name)
	current_pos = complete_stats.execute("SELECT position FROM lineup WHERE name=(?)", [player_name])
	inner_pos = current_pos[0]
	puts "#{player_name} is playing #{inner_pos[0]}"
end

def availability(complete_stats, player_name)
	avail = complete_stats.execute("SELECT available FROM lineup WHERE name=(?)", [player_name])
	inner_avail = avail[0]
		if inner_avail[0] == "true"
			inner_avail = "IS"
		else inner_avail = "IS NOT"
		end
	puts "#{player_name} #{inner_avail} available for today's game!"
end









