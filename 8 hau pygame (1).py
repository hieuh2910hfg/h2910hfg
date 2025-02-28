import pygame
import sys

# Kích thước bàn cờ
N = 8
CELL_SIZE = 80  # Kích thước mỗi ô cờ
BOARD_SIZE = N * CELL_SIZE  # Kích thước tổng thể bàn cờ

# Màu sắc
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)

# Khởi tạo Pygame
pygame.init()
screen = pygame.display.set_mode((BOARD_SIZE, BOARD_SIZE))
pygame.display.set_caption("8-Queens Visualization")

# Tải hình ảnh quân hậu (hoặc vẽ hình tròn đại diện)
queen_img = pygame.image.load("hau.jpg")  # Cần có file ảnh 'hau.jpg'
queen_img = pygame.transform.scale(queen_img, (CELL_SIZE, CELL_SIZE))


def draw_board(solution):
    """Vẽ bàn cờ với lời giải hiện tại"""
    for row in range(N):
        for col in range(N):
            color = WHITE if (row + col) % 2 == 0 else BLACK
            pygame.draw.rect(screen, color, (col * CELL_SIZE, row * CELL_SIZE, CELL_SIZE, CELL_SIZE))
            if solution[row] == col:
                screen.blit(queen_img, (col * CELL_SIZE, row * CELL_SIZE))
    pygame.display.flip()


def is_safe(test_row, test_col, current_solution):
    for row in range(test_row):
        if test_col == current_solution[row] or abs(test_row - row) == abs(test_col - current_solution[row]):
            return False
    return True


def find_solutions():
    solutions = []
    current_solution = [0] * N

    for q0 in range(N):
        current_solution[0] = q0
        for q1 in range(N):
            if not is_safe(1, q1, current_solution): continue
            current_solution[1] = q1
            for q2 in range(N):
                if not is_safe(2, q2, current_solution): continue
                current_solution[2] = q2
                for q3 in range(N):
                    if not is_safe(3, q3, current_solution): continue
                    current_solution[3] = q3
                    for q4 in range(N):
                        if not is_safe(4, q4, current_solution): continue
                        current_solution[4] = q4
                        for q5 in range(N):
                            if not is_safe(5, q5, current_solution): continue
                            current_solution[5] = q5
                            for q6 in range(N):
                                if not is_safe(6, q6, current_solution): continue
                                current_solution[6] = q6
                                for q7 in range(N):
                                    if not is_safe(7, q7, current_solution): continue
                                    current_solution[7] = q7
                                    solutions.append(current_solution[:])
    return solutions


# Tìm tất cả các lời giải
solutions = find_solutions()

# Hiển thị các lời giải bằng Pygame
solution_index = 0
running = True

while running:
    screen.fill(WHITE)
    draw_board(solutions[solution_index])

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE:
                solution_index = (solution_index + 1) % len(solutions)

pygame.quit()
sys.exit()
