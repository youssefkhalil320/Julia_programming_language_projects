alphapet = "abcdefghijklmnopqrstuvwxyz"

function find_index(x)
    for char_iter in 1:length(alphapet)
        if alphapet[char_iter] == x
            return char_iter
        end    
    end    
end 

function Decryption()
    println("Please, Enter the message you want to decrypt")
    message_to_decrypt = readline()
    println("Please Enter The Encryption Key")
    for key in 1:26
        decrypted_message = ""
        for char_index in 1:length(message_to_decrypt)
            if contains(alphapet, message_to_decrypt[char_index]) == true
                goal = find_index(message_to_decrypt[char_index])
                if (goal - key) > 0
                    decrypted_char_index = goal - key
                    decrypted_message = decrypted_message * alphapet[decrypted_char_index]
                else
                    decrypted_char_index = (goal - key) + 26
                    decrypted_message = decrypted_message * alphapet[decrypted_char_index]
                end    
            else
                decrypted_message = decrypted_message*message_to_decrypt[char_index]
            end    
        end
        println("$key : $decrypted_message")
    end   
end    

function main()
    flag = true 
    println("Hello Welcom To CAESAR CIPHER ")
    while flag
        println("If you want to start enter y or Q to Quit")
        Entree = readline()
        if Entree == "Y" || Entree == "y"     
            Decryption() 
        elseif Entree == "q" || Entree == "Q"   
            flag = false
        end    
    end       
end

main()