class Stack {
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
}

void main() {
  var stack = Stack(5); // Khởi tạo stack với capacity là 5

  print(stack.isEmpty()); // true
  print(stack.isFull());  // false

  stack.push(1); // Thêm phần tử 1 vào stack
  stack.push(2); // Thêm phần tử 2 vào stack
  stack.push(3); // Thêm phần tử 3 vào stack

  print(stack.isEmpty()); // false
  print(stack.isFull());  // false

  stack.push(4); // Thêm phần tử 4 vào stack
  stack.push(5); // Thêm phần tử 5 vào stack
  print(stack.isEmpty()); // false
  print(stack.isFull());  // true

  print(stack.pop()); // 5
  print(stack.pop()); // 4

  stack.push(4); // Thêm phần tử 4 vào stack

  print(stack.pop()); // 4
  print(stack.pop()); // 3
  print(stack.pop()); // 2
  print(stack.pop()); // 1

  print(stack.isEmpty()); // true
}