class Seller {
  final String full_name;
  final String email;
  final String phone_number;
  final String? image_file;
  final bool terms_and_conditions;
  final String password;
  final dynamic password2;

  Seller({
    required this.full_name,
    required this.email,
    required this.phone_number,
    required this.terms_and_conditions,
    required this.password,
    required this.password2,
    this.image_file,
  });

  factory Seller.fromJson(Map<String, dynamic> json) {
    return Seller(
      full_name: json["full_name"] as String,
      email: json["email"] as String,
      phone_number: json["phone_number"] as String,
      image_file: json["image_file"] as String?,
      terms_and_conditions: json["terms_and_conditions"] as bool,
      password: json["password"] as String,
      password2: json["password2"] as dynamic,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "full_name": full_name,
      "email": email,
      "phone_number": phone_number,
      "image_file": image_file,
      "terms_and_conditions": terms_and_conditions,
      "password": password,
      "password2": password2,
    };
  }
}
