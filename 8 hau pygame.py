import pygame
import sys

# Kích thước bàn cờ
N = 8
CELL_SIZE = 80  # Kích thước mỗi ô cờ
BOARD_SIZE = N * CELL_SIZE  # Kích thước tổng thể bàn cờ

# Màu sắc
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
RED = (255, 0, 0)

# Khởi tạo Pygame
pygame.init()
screen = pygame.display.set_mode((BOARD_SIZE, BOARD_SIZE))
pygame.display.set_caption("N-Queens Visualization")

# Tải hình ảnh quân hậu (hoặc vẽ hình tròn đại diện)
queen_img = pygame.image.load("hau.png")  # Cần có file ảnh 'queen.png'
queen_img = pygame.transform.scale(queen_img, (CELL_SIZE, CELL_SIZE))

def draw_board(solution):
    """Vẽ bàn cờ với lời giải hiện tại"""
    for row in range(N):
        for col in range(N):
            color = WHITE if (row + col) % 2 == 0 else BLACK
            pygame.draw.rect(screen, color, (col * CELL_SIZE, row * CELL_SIZE, CELL_SIZE, CELL_SIZE))

            # Nếu có quân hậu ở ô này, vẽ hậu
            if solution[row] == col:
                screen.blit(queen_img, (col * CELL_SIZE, row * CELL_SIZE))

    pygame.display.flip()  # Cập nhật màn hình

def is_safe(board, row, col):
    """Kiểm tra xem có thể đặt hậu vào (row, col) không"""
    for i in range(row):
        if board[i] == col or abs(board[i] - col) == abs(i - row):
            return False
    return True

def solve(board, row, n, results):
    """Giải bài toán N-Hậu"""
    if row == n:
        results.append(board[:])  # Thêm lời giải hợp lệ
    else:
        for col in range(n):
            if is_safe(board, row, col):
                board[row] = col
                solve(board, row + 1, n, results)
                board[row] = -1  # Quay lui

# Tìm tất cả các lời giải
solutions = []
solve([-1] * N, 0, N, solutions)

# Hiển thị các lời giải bằng Pygame
solution_index = 0
running = True

while running:
    screen.fill(WHITE)  # Xóa màn hình
    draw_board(solutions[solution_index])  # Vẽ lời giải hiện tại

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False  # Thoát chương trình
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE:  # Nhấn SPACE để xem lời giải tiếp theo
                solution_index = (solution_index + 1) % len(solutions)

pygame.quit()
sys.exit()
