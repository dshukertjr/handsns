import 'package:handsns/models/user.dart';

class Post {
  Post({
    this.imageUrl,
    this.description,
    this.user,
    this.createdAt,
  });
  final String imageUrl;
  final String description;
  final User user;
  final DateTime createdAt;
}
