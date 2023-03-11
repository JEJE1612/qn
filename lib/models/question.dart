import 'package:meta/meta.dart';
import 'package:qn/models/user_model.dart';

class Question {
   final String contain;
  final String answer;
  final String imageUrl;
  final String likes;
  
  final String shares;

  const Question({
    required this.contain,
    required this.answer,
    required this.imageUrl,
    required this.likes,
    required this.shares,
  });
}
