import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String userId;
  final String email;
  final String name;

  const AppUser(
      {required this.userId, required this.email, required this.name});

  static const empty = AppUser(userId: '', email: '', name: '');

  AppUser copyWith({String? userId, String? email, String? name}) {
    return AppUser(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name);
  }

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
    };
  }

  static AppUser fromDocument(Map<String, dynamic> doc) {
    return AppUser(
        userId: doc['userId'], email: doc['email'], name: doc['name']);
  }

  @override
  List<Object?> get props => [userId, email, name];
}
