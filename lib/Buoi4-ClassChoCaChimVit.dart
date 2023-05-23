// Lớp Chó
class Dog {
  String name;
  int age;

  // Phương thức khởi tạo
  Dog(this.name, this.age);

  // Phương thức hành vi: Bark (Sủa)
  void bark() {
    print('Gâu gâu!');
  }

  // Phương thức hành vi: Run (Chạy)
  void run() {
    print('Chó đang chạy!');
  }
}

// Lớp Cá
class Fish {
  String name;
  String color;
  double length;

  // Phương thức khởi tạo
  Fish(this.name, this.color, this.length);

  // Phương thức hành vi: Swim (Bơi)
  void swim() {
    print('Cá đang bơi!');
  }

  // Phương thức hành vi: Eat (Ăn)
  void eat() {
    print('Cá đang ăn!');
  }
}

// Lớp Chim
class Bird {
  String name;
  String species;
  double wingspan;

  // Phương thức khởi tạo
  Bird(this.name, this.species, this.wingspan);

  // Phương thức hành vi: Fly (Bay)
  void fly() {
    print('Chim đang bay!');
  }

  // Phương thức hành vi: Sing (Hót)
  void sing() {
    print('Chim đang hót!');
  }
}

// Lớp Vịt kế thừa từ lớp Chim
class Duck extends Bird {
  // Phương thức khởi tạo
  Duck(String name, String species, double wingspan) : super(name, species, wingspan);

  // Phương thức hành vi riêng của Vịt: Swim (Bơi)
  void swim() {
    print('Vịt đang bơi!');
  }
}

void main() {
  // Khởi tạo các đối tượng
  var myDog = Dog('Trấn Thành', 3);
  var myFish = Fish('Trường Giang', 'Orange', 5.0);
  var myBird = Bird('Hoài Linh', 'Canary', 15.0);
  var myDuck = Duck('Lê Dương Bảo Lâm', 'Mallard', 20.0);

  // Thực thi các phương thức
  print('#################################################');
  print('Có một con chó ở đây:');
  myDog.bark();   // Gâu gâu!
  myDog.run();    // Chó đang chạy!

  print('#################################################');
  print('Có một con cá ở đây:');
  myFish.swim();  // Cá đang bơi!
  myFish.eat();   // Cá đang ăn!

  print('#################################################');
  print('Có một con chim ở đây:');
  myBird.fly();   // Chim đang bay!
  myBird.sing();  // Chim đang hót!

  print('#################################################');
  print('Có một con vịt ở đây:');
  myDuck.fly();   // Chim đang bay! (kế thừa từ lớp Bird)
  myDuck.swim();  // Vịt đang bơi! (phương thức riêng của lớp Duck)
}
