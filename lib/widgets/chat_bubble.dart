import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final Map<String, dynamic> msg;
  const ChatBubble({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    bool isUser = msg["sender"] == "user";
    Color bg = isUser ? Color(0xFF61623B) : Color(0xFF1A1A1A);
    Color textColor = Colors.white;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        constraints: BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(msg["text"] ?? "", style: TextStyle(color: textColor)),
      ),
    );
  }
}
