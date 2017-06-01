# Virus Predictor

# I worked on this challenge [with: Jenna Ritten].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# RRel says you're needing the data from a local drive.  Require is needing data from outside to a remote place.
#
require_relative 'state_data'

class VirusPredictor
# run on initialization and creates instances to be used in the VirusPredictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calls predicted_death and speed_of_spread methods, providing paramaters using instance variables
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private
# using keys and values from constant hash, passinging in both as required to manipulate data in the IF/ELSE statement
  def predicted_deaths
    # predicted deaths is solely based on population density

    number_of_deaths = if @population_density >= 200
                        (@population * 0.4).floor
                      elsif @population_density >= 150
                        (@population * 0.3).floor
                      elsif @population_density >= 100
                        (@population * 0.2).floor
                      elsif @population_density >= 50
                        (@population * 0.1).floor
                       else
                        (@population * 0.05).floor
                      end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# picking out one value, passing in the key, providing data using only those values, giving us speed based in months
  def speed_of_spread 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |name, info|
 new_Predictor = VirusPredictor.new(name, STATE_DATA[name][:population_density], STATE_DATA[name][:population])
 new_Predictor.virus_effects
end
#info = {population_density: 94.65, population: 4822023}


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
#STATE_DATA is a constant variable

# RRel says you're needing the data from a local drive.  Require is needing data from outside to a remote place.

#You can iterate through a hash with .each or .keys or .values.

#The instance variable were already being called in other methods.

#examples of DRY


