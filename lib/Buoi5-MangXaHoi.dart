class Member {
  String name; // Tên thành viên
  String avatar; // Đường dẫn đến ảnh đại diện
  String fullName; // Họ và tên đầy đủ
  DateTime birthDate; // Ngày sinh
  String phoneNumber; // Số điện thoại
  String email; // Địa chỉ email
  String gender; // Giới tính

  Member(this.name, this.avatar, this.fullName, this.birthDate, this.phoneNumber, this.email, this.gender);
}

class Post {
  Member author; // Tác giả bài viết
  String content; // Nội dung bài viết
  List<String> images; // Danh sách các đường dẫn đến ảnh trong bài viết
  List<Comment> comments; // Danh sách các bình luận trong bài viết

  Post(this.author, this.content, this.images, this.comments);
}


class Comment {
  Member commenter; // Người bình luận
  String content; // Nội dung bình luận

  Comment(this.commenter, this.content);
}

void main() {
  // Sự kiện 1: Thành viên 1, 2 xuất hiện
  var member1 = Member(
    "user1",
    "avatar1.jpg",
    "TRƯỜNG GIANG",
    DateTime(1990, 5, 15),
    "0123456789",
    "user1@example.com",
    "Nam",
  );

  var member2 = Member(
    "user2",
    "avatar2.jpg",
    "TRẤN THÀNH",
    DateTime(1995, 8, 22),
    "0987654321",
    "user2@example.com",
    "Nữ",
  );

  // Sự kiện 2: Thành viên 1,2 Tạo bài viết
  var post1 = Post(
    member1,
    "Đây là bài viết số 1",
    ["image1.jpg"],
    [],
  );

  var post2 = Post(
    member2,
    "Đây là bài viết số 2",
    ["image2.jpg", "image3.jpg"],
    [],
  );

  // Sự kiện 3: Thành viên 1,2 Tạo bình luận
  var comment1 = Comment(
    member2,
    "Bài viết hay quá!",
  );

  var comment2 = Comment(
    member1,
    "Cảm ơn bạn đã chia sẻ.",
  );

  // Sự kiện 4: Bình luận được Thành viên 1,2 Tạo bình luận
  post1.comments.add(comment1);
  post2.comments.add(comment2);

  // In thông tin thành viên
  print("Thông tin thành viên:");
  print("Tên: ${member1.name}");
  print("Họ tên: ${member1.fullName}");
  print("Ngày sinh: ${member1.birthDate}");
  print("Số điện thoại: ${member1.phoneNumber}");
  print("Email: ${member1.email}");
  print("Giới tính: ${member1.gender}");

  // In thông tin bài viết
  print("\nThông tin bài viết:");
  print("Tác giả: ${post1.author.fullName}");
  print("Nội dung: ${post1.content}");
  print("Hình ảnh: ${post1.images.join(", ")}");
  print("Bình luận: ${post1.comments.length} bình luận");

  // In thông tin bình luận
  print("\nThông tin bình luận:");
  for (var comment in post1.comments) {
    print("Tác giả: ${comment.commenter.fullName}");
    print("Nội dung: ${comment.content}");
    print("-----");
  }
}


