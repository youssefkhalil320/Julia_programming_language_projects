using Random 
function the_game()
    rand_num = rand(1, 3)
    println("Enetr rock, paper, scissors")
    user_choice = readline()
    if user_choice == "rock"
        if rand_num == 1
            println("WOOOOW!! You Won.... ")
            playing_again()
        else
            println("MMMMMM!! You Lost.... ")
            playing_again()
        end  

    elseif user_choice == "paper"
        if rand_num == 2
            println("WOOOOW!! You Won.... ")
            playing_again()
        else
            println("MMMMMM!! You Lost.... ")
            playing_again() 
        end    

    else user_choice == "scissors"
        if rand_num == 2
            println("WOOOOW!! You Won.... ")
            playing_again()
        else
            println("MMMMMM!! You Lost.... ")
            playing_again()  
        end    
    end    
end              


function playing_again()
    println("If you wanna play again Enter Y if not Enter Q")
    wanna_play = readline()
    if wanna_play == "Y" || wanna_play == "y"
        the_game()
    else
        println("GooD Byeee!!!")
        return

    end
end            

    
println("Welcome to the game....")
the_game()
