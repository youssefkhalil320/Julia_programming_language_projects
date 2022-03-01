alphapet = "abcdefghijklmnopqrstuvwxyz"
function Choice()
    println("For Encryption Enter <E> For Dycreption Enter <D> ?")
    choice = readline()
    if choice == "d" || choice == "D"
        Decryption()
    elseif choice == "E" || choice == "e"
        Encryption()  
    else
        println("Please, Enter a valid Choice")  
        Choice()
    end         
end

function find_index(x)
    for char_iter in 1:length(alphapet)
        if alphapet[char_iter] == x
            return char_iter
        end    
    end    
end    

function Encryption()
    println("Please, Enter the message you want to Encyrept")
    message_to_encyrept = readline()
    println("Please Enter The Encryption Key")
    key = readline()
    key = parse(Int64, key)
    encrypted_message = ""
    for char_index in 1:length(message_to_encyrept)
        if contains(alphapet, message_to_encyrept[char_index]) == true
            goal = find_index(message_to_encyrept[char_index])
            if (goal + key) < 26
                encrypted_char_index = goal + key
                encrypted_message = encrypted_message * alphapet[encrypted_char_index]
            else
                encrypted_char_index = (goal - 26) + key
                encrypted_message = encrypted_message * alphapet[encrypted_char_index]
            end    
        else
            encrypted_message = encrypted_message*message_to_encyrept[char_index]
        end    
    end
    println(encrypted_message)
end

function Decryption()
    println("Please, Enter the message you want to decrypt")
    message_to_decrypt = readline()
    println("Please Enter The Encryption Key")
    key = readline()
    key = parse(Int64, key)
    decrypted_message = ""
    for char_index in 1:length(message_to_decrypt)
        if contains(alphapet, message_to_decrypt[char_index]) == true
            goal = find_index(message_to_decrypt[char_index])
            if (goal - key) > 0
                decrypted_char_index = goal - key
                decrypted_message = decrypted_message * alphapet[decrypted_char_index]
            else
                println(goal)
                decrypted_char_index = (goal - key) + 26
                decrypted_message = decrypted_message * alphapet[decrypted_char_index]
            end    
        else
            decrypted_message = decrypted_message*message_to_decrypt[char_index]
        end    
    end
    println(decrypted_message)

end    

function main()
    flag = true 
    println("Hello Welcom To CAESAR CIPHER ")
    while flag
        println("If you want to start enter y or Q to Quit")
        Entree = readline()
        if Entree == "Y" || Entree == "y"     
            Choice() 
        elseif Entree == "q" || Entree == "Q"   
            flag = false
        end    
    end       
end

main()