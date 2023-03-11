import 'package:meta/meta.dart';
import 'package:qn/models/user_model.dart';

class Post {
  final User user;
  final String caption;
  final String answer;
  final String time;
  final String imageUrl;
  final String likes;
  final int comments;
  final String shares;

  const Post({
    required this.user,
     required this.time,
    required this.caption,
    required this.answer,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
