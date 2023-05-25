//Đề bài: cho đoạn code sinh ngẫu nhiên một mảnh 10 số nguyên.
// Hãy sắp xếp mảng trên theo thứ tự tăng dần mà không dùng hàm TenMang.sort() có sẵn.

import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  print('Mảng ban đầu: $numbers');

  bubbleSort(numbers);

  print('Mảng được sắp xếp: $numbers');
}

void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      // So sánh phần tử hiện tại với phần tử kế tiếp, phần tử cuối cùng không cần so sánh nữa
      if (arr[j] > arr[j + 1]) {
        // Nếu phần tử hiện tại lớn hơn phần tử kế tiếp, hoán đổi chúng
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

// Bubble Sort là một thuật toán hoạt động bằng cách so sánh lần lượt các phần tử liền kề trong mảng và hoán đổi chúng nếu chúng không đúng thứ tự. Quá trình này được lặp lại cho đến khi không còn cần hoán đổi nữa, tức là mảng đã được sắp xếp.
//
// Thuật toán Bubble Sort hoạt động theo cách sau:
// Bắt đầu từ phần tử đầu tiên, so sánh nó với phần tử tiếp theo.
// Nếu phần tử tiếp theo nhỏ hơn phần tử hiện tại, hoán đổi chúng.
// Tiếp tục so sánh và hoán đổi các phần tử liên tiếp cho đến khi đi đến phần tử cuối cùng của mảng.
// Lặp lại các bước 1-3 cho tất cả các phần tử trong mảng, ngoại trừ phần tử cuối cùng đã được sắp xếp ở vòng lặp trước.
// Quá trình này được lặp lại cho đến khi không còn cần hoán đổi nữa, tức là mảng đã được sắp xếp.
// Điểm yếu của Bubble Sort là nó có hiệu suất chậm khi sắp xếp mảng lớn. Tuy nhiên, nó dễ hiểu và dễ triển khai, thích hợp cho các mảng nhỏ hoặc đã gần sắp xếp.