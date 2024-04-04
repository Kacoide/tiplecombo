from random import randrange

def display_board(board):
    """Display the tic-tac-toe board."""
    print("+-------+-------+-------+")
    for row in board:
        print("|       |       |       |")
        print(f"|   {row[0]}   |   {row[1]}   |   {row[2]}   |")
        print("|       |       |       |")
        print("+-------+-------+-------+")

def check_winner(board, marker):
    """Check if there's a winner."""
    # Check rows and columns
    for i in range(3):
        if all(cell == marker for cell in board[i]) or all(board[j][i] == marker for j in range(3)):
            return True
    # Check diagonals
    if all(board[i][i] == marker for i in range(3)) or all(board[i][2-i] == marker for i in range(3)):
        return True
    return False

def check_draw(board):
    """Check if the game ended in a draw."""
    for row in board:
        if any(cell.isdigit() for cell in row):
            return False
    return True

def user_move(board, move):
    """Make a move for the user."""
    for i in range(3):
        for j in range(3):
            if board[i][j] == str(move):
                board[i][j] = 'O'
                return

def computer_move(board):
    """Make a move for the computer."""
    while True:
        row = randrange(3)
        col = randrange(3)
        if board[row][col].isdigit():
            board[row][col] = 'X'
            return

def tic_tac_toe():
    """Main function to play tic-tac-toe."""
    # Initialize the board
    board = [['1', '2', '3'], ['4', 'X', '6'], ['7', '8', '9']]
    
    # Display the initial board
    display_board(board)

    # Main game loop
    while True:
        # User's move
        user_input = int(input("Ingresa tu movimiento: "))
        user_move(board, user_input)

        # Display the updated board
        display_board(board)

        # Check if user wins
        if check_winner(board, 'O'):
            print("¡Has Ganado!")
            break

        # Check if the game ends in a draw
        if check_draw(board):
            print("¡El juego termina en empate!")
            break

        # Computer's move
        computer_move(board)

        # Display the updated board
        display_board(board)

        # Check if computer wins
        if check_winner(board, 'X'):
            print("¡La máquina ha ganado!")
            break

        # Check if the game ends in a draw
        if check_draw(board):
            print("¡El juego termina en empate!")
            break

# Start the game
tic_tac_toe()