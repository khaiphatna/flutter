class Vehicle {
  bool _engineStarted = false; // Biến _engineStarted để lưu trạng thái động cơ (bật/tắt), quy định false là tắt, biến private chỉ dùng trong class và các class con của nó.

  void startEngine() {
    if (!_engineStarted) { // Kiểm tra nếu động cơ chưa được bật
      _engineStarted = true; // Bật động cơ
      print('Động cơ đã được bật.');
    } else {
      print('Động cơ đã đang hoạt động.');
    }
  }

  void stopEngine() {
    if (_engineStarted) { // Kiểm tra nếu động cơ đã đang hoạt động
      _engineStarted = false; // Tắt động cơ
      print('Động cơ đã được tắt.');
    } else {
      print('Động cơ đã đang dừng.');
    }
  }
}

class Car extends Vehicle {
  void accelerate() {
    if (_engineStarted) { // Kiểm tra nếu động cơ đã được bật
      print('Xe đang tăng tốc.');
    } else {
      print('Vui lòng bật động cơ trước.');
    }
  }

  void brake() {
    if (_engineStarted) { // Kiểm tra nếu động cơ đã được bật
      print('Xe đang phanh.');
    } else {
      print('Vui lòng bật động cơ trước.');
    }
  }
}

class Motorcycle extends Vehicle {
  void accelerate() {
    if (_engineStarted) { // Kiểm tra nếu động cơ đã được bật
      print('Xe máy đang tăng tốc.');
    } else {
      print('Vui lòng bật động cơ trước.');
    }
  }

  void brake() {
    if (_engineStarted) { // Kiểm tra nếu động cơ đã được bật
      print('Xe máy đang phanh.');
    } else {
      print('Vui lòng bật động cơ trước.');
    }
  }
}

void main() {
  var car = Car();
  car.startEngine(); // Bật động cơ.
  car.accelerate(); // Xe đang tăng tốc.
  car.brake(); // Xe đang phanh.
  car.stopEngine(); // Tắt động cơ.

  var motorcycle = Motorcycle();
  motorcycle.startEngine(); // Bật động cơ.
  motorcycle.accelerate(); // Xe máy đang tăng tốc.
  motorcycle.brake(); // Xe máy đang phanh.
  motorcycle.stopEngine(); // Tắt động cơ.
}
