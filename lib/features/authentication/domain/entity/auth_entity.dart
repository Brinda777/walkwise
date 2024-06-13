import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? id;
  final String? fullName;
  final String?  phone;
  final String email;
  final String password;

  const AuthEntity({
    this.id,
    this.fullName,
    this.phone,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props =>
      [id, fullName, phone, email, password];
}
