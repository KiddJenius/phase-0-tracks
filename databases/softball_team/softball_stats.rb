require 'sqlite3'

complete_stats = SQLite3::Database.new("stats.db")
# complete_stats.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lineup(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)UNIQUE,
    bat_avg INT,
    position VARCHAR(255),
    available BOOLEAN
  )
SQL

complete_stats.execute(create_table_cmd)

def create_player(complete_stats, player_name, avg, field_pos, can_play)
	complete_stats.execute("INSERT OR IGNORE INTO lineup (name, bat_avg, position, available) VALUES (?,?,?,?)", 
	[player_name, avg, field_pos, can_play])
end

create_player(complete_stats,"Joe Antoun", 0.414, "right field", "true")
# create_player(complete_stats,"Mike Rogers", 0.389, "catcher", "true")


def batting_avg(complete_stats, player_name)
	average = complete_stats.execute("SELECT bat_avg FROM lineup WHERE name=(?)",[player_name])
	inner_average = average[0]
	puts "#{player_name}'s batting average is #{inner_average[0]}"
end

def position(complete_stats, player_name, pos)
	complete_stats.execute("UPDATE lineup SET position=(?) WHERE name=(?)", [pos, player_name])
	current_pos = complete_stats.execute("SELECT position FROM lineup WHERE name=(?)", [player_name])
	inner_pos = current_pos[0]
	puts "#{player_name} is now playing #{inner_pos[0]}"
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

# USER INTERFACE

puts "Hello Coach."
valid = false
until valid
puts "What would you like to do?  (A = Add a player, B = lookup Batting avgerage, P = update Position, S = check weekly Status) "
choice = gets.chomp.downcase
	if choice == "a"
		puts "What is the player's name to add?"
			player_name = gets.chomp
		puts "What are they batting? (use format 0.xxx)"
			avg = gets.chomp
		puts "What position is #{player_name} playing?"
			field_pos =  gets.chomp
		puts "Are they available this week? (type 'yes' or 'no')"
			can_play = gets.chomp
			if can_play == "yes"
				can_play = "true"
			else can_play = "false"
			end
		create_player(complete_stats, player_name, avg, field_pos, can_play)
		valid = true
	elsif choice == "b"
		puts "What player do you want to look up?"
			player_name = gets.chomp
			batting_avg(complete_stats, player_name)
		valid = true
	elsif choice == "p"
		puts "What player would you like to update?"
			player_name = gets.chomp 
		puts "What position should he be playing?"
			new_pos = gets.chomp
			position(complete_stats, player_name, new_pos)
			valid = true
	elsif choice == "s"
		puts "What player's staus would you like to check?"
			player_name = gets.chomp
			availability(complete_stats, player_name)
			valid = true
	else puts "Not a valid selection"		
	end
end


	








