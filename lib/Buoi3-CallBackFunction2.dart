 void performOperation(int a, int b, Function(int, int) callback) {
    int result = callback(a, b);
    print('Kết quả: $result');
  }

  int add(int a, int b) {
    return a + b;
  }

  void main() {
    performOperation(3, 5, add);
  }

