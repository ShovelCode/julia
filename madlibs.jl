#not tested
function play_mad_libs()

    print("Enter a verb in infinitive: ")
    verb1 = readline()

    print("Enter an adjective : ")
    adj1 = readline()

    print("Enter a noun : ")
    noun1 = readline()

    print("Enter another noun : ")
    noun2 = readline()

    print("Enter a phrase: ")
    phrase1 = readline()
    
    base_sentence = "$name $verb1 down the street one night, playing with his $adj1 $noun1. When all of a /
    sudden, a $noun2 jumped out at him and said $phrase1"
    print("\n\n", base_sentence)
end

play_mad_libs()
