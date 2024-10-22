require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homeTemp)
end

get("/process_roll") do
  @numDice=params.fetch('dice').to_i
  @numSides=params.fetch('sides').to_i
  @rolls=[]
  @numDice.times do
    roll=rand(1..@numSides)
    @rolls.push(roll)
  end
  erb(:processTemp)
end
