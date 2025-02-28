def is_safe(board, row, col):
    """Kiểm tra xem có thể đặt hậu vào vị trí (row, col) hay không"""
    for i in range(row):  # Kiểm tra các hàng trước đó
        if board[i] == col:  # Nếu trùng cột
            return False
        elif abs(board[i] - col) == abs(i - row):  # Nếu trùng đường chéo
            return False
    return True  # Nếu không có xung đột, vị trí này hợp lệ


def solve(board, row, n, results):
    """Đặt hậu vào bàn cờ"""
    if row == n:  # Nếu đã đặt đủ n quân hậu
        results.append(board[:])  # Lưu kết quả
    else:
        for col in range(n):  # Duyệt từng cột để thử đặt hậu
            if is_safe(board, row, col):  # Nếu đặt được
                board[row] = col  # Đặt hậu
                solve(board, row + 1, n, results)  # Gọi đệ quy cho hàng tiếp theo
                board[row] = -1  # Hủy bỏ bước đặt hậu để thử vị trí khác (quay lui)


def print_board(results, n):
    """In tất cả các cách đặt hậu"""
    for solution in results:
        for row in range(n):
            line = ['.'] * n
            line[solution[row]] = 'Q'  # Đặt hậu vào vị trí đúng
            print(' '.join(line))  # In ra hàng hiện tại
        print("\n")  # In khoảng trống giữa các lời giải


# Khởi chạy chương trình
n = 8  # Kích thước bàn cờ 8x8
results = []  # Danh sách lưu các cách đặt hậu hợp lệ
solve([-1] * n, 0, n, results)  # Bắt đầu từ hàng 0
print_board(results, n)  # In kết quả