# QUESTION 1

POKEMON = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def quiz_1
  POKEMON.find {|hash| hash[:name] == "bulbasaur"}[:abilities][0][:ability][:url]
end
solution = quiz_1

# How would you return the first pokemon with base experience over 40?
def quiz_2
  POKEMON.find {|hash| hash[:base_experience] > 40}.fetch(:name)
end
solution = quiz_2

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def quiz_3
  POKEMON.collect do |hash|
    if hash[:base_experience] > 40
      hash[:name]
    end
  end
end
solution = quiz_3

# How would you return an array of all of the pokemon's names?
def quiz_4
  POKEMON.collect {|hash| hash[:name]}
end
solution = quiz_4

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.

def quiz_5
  POKEMON.any? {|hash| hash[:weight] > 60}
end
solution = quiz_5
