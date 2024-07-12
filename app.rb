require "sinatra"
require "sinatra/reloader"
require "http"

get("/") do

  erb(:home)
end

get("/rock") do
  random_number = rand(1..3)
  move = ""
  decision = ""
  if (random_number == 1)
    move = "rock"
    decision = "tied"
  elsif (random_number == 2)
    move = "paper"
    decision = "lost"
  elsif (random_number == 3)
    move = "scissors"
    decision = "won"
  end

  @output = "They played #{move}!"
  @output_1 = "We #{decision}!"

  erb(:rock)
end

get("/paper") do
  random_number = rand(1..3)
  move = ""
  decision = ""
  if (random_number == 1)
    move = "rock"
    decision = "won"
  elsif (random_number == 2)
    move = "paper"
    decision = "tied"
  elsif (random_number == 3)
    move = "scissors"
    decision = "lost"
  end

  @output = "They played #{move}!"
  @output_1 = "We #{decision}!"

  erb(:paper)
end

get("/scissors") do
  random_number = rand(1..3)
  move = ""
  decision = ""
  if (random_number == 1)
    move = "rock"
    decision = "lost"
  elsif (random_number == 2)
    move = "paper"
    decision = "won"
  elsif (random_number == 3)
    move = "scissors"
    decision = "tied"
  end

  @output = "They played #{move}!"
  @output_1 = "We #{decision}!"

  erb(:scissors)
end
