#universe is the hash
#quasar, galaxy, empty space, 
#solar system, star, black hole, nebula
#planet, comet, moon

universe = {
	'nebula' => ['dust', 'gasses'],
	'galaxy' => [solar_system = {'planet'=>'earth', 'comet'=>'haley', 'moon'=>'ganymede'},
	'black hole', 'star','nebula' ],
	'empty_space' => ['dark_matter', 'vacuum']
	
}

p universe['galaxy'] = solar_system['planet']
#a hash inside an array inside a hash.  Returns "earth"

p universe ['empty_space'][1]
# an array inside a hash returning index 1
