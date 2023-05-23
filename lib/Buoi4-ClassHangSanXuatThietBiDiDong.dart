// Lớp Hãng sản xuất
class Manufacturer {
  int id;
  String name;

  // Phương thức khởi tạo
  Manufacturer(this.id, this.name);
}

// Lớp Thiết bị
class Device {
  int id;
  String name;
  String systemName;
  Manufacturer manufacturer;

  // Phương thức khởi tạo
  Device(this.id, this.name, this.systemName, this.manufacturer);
}

void main() {
  // Khởi tạo các đối tượng hãng sản xuất
  var apple = Manufacturer(1, 'Apple');
  var samsung = Manufacturer(2, 'Samsung');
  var google = Manufacturer(3, 'Google');

  // Khởi tạo các đối tượng thiết bị
  var iPhone = Device(1, 'iPhone', 'iOS', apple);
  var galaxy = Device(2, 'Galaxy', 'Android', samsung);
  var pixel = Device(3, 'Pixel', 'Android', google);

  // In ra thông tin của các thiết bị
  print('Device: ${iPhone.name}');
  print('Manufacturer: ${iPhone.manufacturer.name}');
  print('System: ${iPhone.systemName}');

  print('Device: ${galaxy.name}');
  print('Manufacturer: ${galaxy.manufacturer.name}');
  print('System: ${galaxy.systemName}');

  print('Device: ${pixel.name}');
  print('Manufacturer: ${pixel.manufacturer.name}');
  print('System: ${pixel.systemName}');
}