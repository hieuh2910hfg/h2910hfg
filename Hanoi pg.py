import pygame
import time


def hanoi(n, source, auxiliary, destination, steps):
    if n == 1:
        steps.append((source, destination))
    else:
        hanoi(n - 1, source, destination, auxiliary, steps)
        steps.append((source, destination))
        hanoi(n - 1, auxiliary, source, destination, steps)


def draw_hanoi(disks, pegs):
    screen.fill(WHITE)
    base_y = HEIGHT - 50
    peg_width = 10
    peg_height = HEIGHT - 200
    peg_x_positions = [WIDTH // 4, WIDTH // 2, 3 * WIDTH // 4]

    for x in peg_x_positions:
        pygame.draw.rect(screen, BLACK, (x - peg_width // 2, base_y - peg_height, peg_width, peg_height))

    for i in range(3):
        peg_x = peg_x_positions[i]
        for j, disk in enumerate(pegs[i]):
            disk_width = disk * 20 + 20
            disk_height = 20
            disk_x = peg_x - disk_width // 2
            disk_y = base_y - (j + 1) * disk_height
            pygame.draw.rect(screen, BLUE, (disk_x, disk_y, disk_width, disk_height))

    pygame.display.flip()


pygame.init()
WIDTH, HEIGHT = 600, 400
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
BLUE = (0, 0, 255)
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Tháp Hà Nội")

disks = 6
steps = []
hanoi(disks, 0, 1, 2, steps)

pegs = [list(range(disks, 0, -1)), [], []]
draw_hanoi(disks, pegs)

running = True
solving = False
step_index = 0
paused = False

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE and not solving:
                solving = True
            if event.key == pygame.K_d:
                paused = not paused

    if solving and step_index < len(steps) and not paused:
        src, dest = steps[step_index]
        pegs[dest].append(pegs[src].pop())
        draw_hanoi(disks, pegs)
        step_index += 1
        time.sleep(0.5)

pygame.quit()
