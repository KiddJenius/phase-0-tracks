# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "Happy happy " + "Joy-joy!"
#   end
# end

# puts Shout.yell_angrily("Damn")
# puts Shout.yell_happily("Ok everybody now ")

module Shout
  def Uh_oh(bad_name)
    puts "Get your butt over here right now #{bad_name}!!!"
  end
end

class Boss
	include Shout
end

class Mother
	include Shout
end

boss = Boss.new
boss.Uh_oh("slacker")

mother = Mother.new
mother.Uh_oh("young man")