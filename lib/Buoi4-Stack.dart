int capacity; // Số lượng phần tử tối đa mà stack có thể chứa
List<dynamic> elements; // Danh sách các phần tử trong stack

// Phương thức khởi tạo
Stack(this.capacity) : elements = [];

// Kiểm tra stack có trống không
bool isEmpty() {
  return elements.isEmpty;
}

// Kiểm tra stack đã đầy chưa
bool isFull() {
  return elements.length == capacity;
}

// Xóa phần tử được thêm vào sau cùng và trả về phần tử đó
dynamic pop() {
  if (isEmpty()) {
    print('Stack is empty!');
    return null;
  }
  return elements.removeLast();
}

// Thêm phần tử vào stack
void push(dynamic value) {
  if (isFull()) {
    print('Stack is full!');
    return;
  }
  elements.add(value);
}
