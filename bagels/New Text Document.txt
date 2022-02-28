using Random
welcoming_text = """ I am thinking of a 3-digit number. Try to guess what it is.
Here are some clues:
When I say: That means:
 Pico             One digit is correct but in the wrong position.
 Fermi            One digit is correct and in the right position.
 Bagels           No digit is correct.
 I have thought up a number.
 You have 10 guesses to get it. """
println(welcoming_text)
secret_num = ""
function generate_random_number()
    for i in 1:3
        rand_num = rand(0:9)
        num = string(rand_num)
        global secret_num = secret_num* num     
    end 
    println(secret_num) 

end 

function the_game()
    guess_number = 1
    allowed_num = 10
    while allowed_num > 0
        println("#Guess $guess_number")
        user_choice = readline()
        allowed_num = allowed_num - 1 
        guess_number = guess_number +1
        if user_choice == secret_num 
            print("You got It")
            break
        else
            for char in 1:length(user_choice) 
                if user_choice[char] == secret_num[char]
                    println("Fermi")
                    break
                elseif  user_choice[char] in  secret_num
                    println("Pico")
                    break
                else
                    println("Bagels")
                    break
                end 
            end    
            
        end
    end  
end      
function main()
    generate_random_number()
    the_game()
end

main()