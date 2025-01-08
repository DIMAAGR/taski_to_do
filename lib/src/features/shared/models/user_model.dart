class UserModel {
  final String name;
  final String image;

  UserModel({
    required this.name,
    required this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      image: json['image'],
    );
  }

  UserModel copyWith({
    String? name,
    String? image,
  }) {
    return UserModel(
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }
}
