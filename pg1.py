import pygame
import random

# Khởi tạo pygame
pygame.init()

# Kích thước màn hình
WIDTH, HEIGHT = 540, 600
CELL_SIZE = WIDTH // 9
FONT = pygame.font.Font(None, 40)
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
GRAY = (200, 200, 200)
BLUE = (0, 0, 255)

# Tạo cửa sổ
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Sudoku Solver")


def is_valid(board, row, col, num):
    for i in range(9):
        if board[row][i] == num or board[i][col] == num:
            return False
    start_row, start_col = (row // 3) * 3, (col // 3) * 3
    for i in range(3):
        for j in range(3):
            if board[start_row + i][start_col + j] == num:
                return False
    return True


def fill_board(board):
    for row in range(9):
        for col in range(9):
            if board[row][col] == 0:
                nums = list(range(1, 10))
                random.shuffle(nums)
                for num in nums:
                    if is_valid(board, row, col, num):
                        board[row][col] = num
                        if fill_board(board):
                            return True
                        board[row][col] = 0
                return False
    return True


def remove_numbers(board, difficulty=40):
    positions = [(i, j) for i in range(9) for j in range(9)]
    random.shuffle(positions)
    for _ in range(difficulty):
        row, col = positions.pop()
        board[row][col] = 0


def generate_sudoku():
    board = [[0] * 9 for _ in range(9)]
    fill_board(board)
    remove_numbers(board, difficulty=random.randint(40, 50))
    return board


def draw_board(board):
    screen.fill(WHITE)
    for row in range(9):
        for col in range(9):
            num = board[row][col]
            if num != 0:
                text = FONT.render(str(num), True, BLACK)
                screen.blit(text, (col * CELL_SIZE + 20, row * CELL_SIZE + 15))

    for i in range(10):
        thickness = 3 if i % 3 == 0 else 1
        pygame.draw.line(screen, BLACK, (i * CELL_SIZE, 0), (i * CELL_SIZE, WIDTH), thickness)
        pygame.draw.line(screen, BLACK, (0, i * CELL_SIZE), (WIDTH, i * CELL_SIZE), thickness)


    pygame.display.flip()


def solve_sudoku(board):
    for row in range(9):
        for col in range(9):
            if board[row][col] == 0:
                for num in range(1, 10):
                    if is_valid(board, row, col, num):
                        board[row][col] = num
                        if solve_sudoku(board):
                            return True
                        board[row][col] = 0

                return False
    return True


# Tạo Sudoku ban đầu
sudoku_board = generate_sudoku()
solved = False

draw_board(sudoku_board)

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE and not solved:
                solved = solve_sudoku(sudoku_board)
                draw_board(sudoku_board)

pygame.quit()
