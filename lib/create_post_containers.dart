import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
              ),
              const SizedBox(width: 8.0),
              Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'what is your question ? '),
              ))
            ],
          )
        ],
      ),
    );
  }
}
