import 'package:clone_instagram_ui/const/const.dart';
import 'package:flutter/material.dart';

class MessagePageContent extends StatefulWidget {
  const MessagePageContent({
    super.key,
  });

  @override
  State<MessagePageContent> createState() => _MessagePageContent();
}

class _MessagePageContent extends State<MessagePageContent> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [Text(nameProfile)],
    );
  }
}
