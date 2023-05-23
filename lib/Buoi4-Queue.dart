class Queue {
  int capacity; // Số lượng phần tử tối đa mà queue có thể chứa
  List<dynamic> elements; // Danh sách các phần tử trong queue

  // Phương thức khởi tạo
  Queue(this.capacity) : elements = [];

  // Kiểm tra queue có trống không
  bool isEmpty() {
    return elements.isEmpty;
  }

  // Kiểm tra queue đã đầy chưa
  bool isFull() {
    return elements.length == capacity;
  }

  // Xóa phần tử được thêm vào đầu tiên và trả về phần tử đó
  dynamic dequeue() {
    if (isEmpty()) {
      print('Queue is empty!');
      return null;
    }
    return elements.removeAt(0);
  }

  // Thêm phần tử vào queue
  void enqueue(dynamic value) {
    if (isFull()) {
      print('Queue is full!');
      return;
    }
    elements.add(value);
  }
}

void main() {
  var queue = Queue(5); // Khởi tạo queue với capacity là 5

  print(queue.isEmpty()); // true
  print(queue.isFull());  // false

  queue.enqueue(1); // Thêm phần tử 1 vào queue
  queue.enqueue(2); // Thêm phần tử 2 vào queue
  queue.enqueue(3); // Thêm phần tử 3 vào queue

  print(queue.isEmpty()); // false
  print(queue.isFull());  // false

  print(queue.dequeue()); // 1
  print(queue.dequeue()); // 2

  queue.enqueue(4); // Thêm phần tử 4 vào queue

  print(queue.dequeue()); // 3
  print(queue.dequeue()); // 4

  print(queue.isEmpty()); // true
}