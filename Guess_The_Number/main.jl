using Random
println("Welcome to My Guess the Number Game In Julia")
function the_game()
    println("Enter a number")
    number = readline()
    if number == rand(1, 10)
        print("Congrats!!!")
        playing_again()
    else
        print("Wrong Guess")
        playing_again()

    end
end
function playing_again()
    println("If you wanna play again Enter Y if not Enter Q")
    wanna_play = readline()
    if wanna_play == "Y" || wanna_play == "y"
        the_game()
    else
        return

    end
end

the_game()    