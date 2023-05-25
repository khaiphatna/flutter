//ĐỀ BÀI
// Sửa đoạn code sau, thêm đoạn gọi hàm trong hàm main, nhận về được kết quả trong main mà không dùng return
//
// void main() {
// textField(
//   String text, {
//   Function (String)? onChanged,
//   })
// {
//   if (onChanged != null){
//     final result = 'Hello $text';
// }
// }
// }

void main() {
  String result = ''; //sử dụng biến toàn cục result để lưu kết quả từ hàm textField nếu không dùng return.

  void textField(
      String text, {
        Function(String)? onChanged,
      }) {
    if (onChanged != null) { //kiểm tra xem onChanged có khác null hay không. Nếu onChanged khác null, biến result sẽ được gán giá trị 'Hello $text'.
      result = 'Hello $text';
    }
  }

  textField('World', onChanged: (value) {  //gọi hàm textField và truyền chuỗi 'World' và một hàm callback onChanged
    // print('onChanged callback được gọi');
    //  print(result);
  });

  print(result); // In ra kết quả ở hàm main
}