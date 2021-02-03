print("Welcome")                # Display a welcome message
g = input("Guess the number: ") # Take input and stores in a variable
guess = int(g)                  # Convert the input to a number
if guess == 5:                  # Is the input 5?
    print("You win!")           # It is, shows that you win
else:                           # The input is not 5
    print("You lose!")          # It says you lose
print("Game Over!")             # End game