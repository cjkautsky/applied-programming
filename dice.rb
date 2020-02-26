require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @die_1 = rand(1..6)
    @die_2 = rand(1..6)

    @dice = []
    for die in (0..4)
        die = rand(1..6)
        @dice << die
    end

    # puts "<h1>Dice: #{die_1}, #{die_2}</p>"
    # "<h1>Dice: #{die_1}, #{die_2}</h1>"
    view "dice"
end

get "/tacos" do
    "Tacos"
end