print("Welcome")                    # Display a welcome message
guess = 0
while guess != 5:
    g = input("Guess the number: ") # Take input and stores in a variable
    guess = int(g)                  # Convert the input to a number
    if guess == 5:                  # Is the input 5?
        print("You win!")           # It is, shows that you win
    else:                           # The input is not 5
        if guess > 5:
            print("Too high")
        else:
            print("Too low")
print("Game Over!")                 # End game