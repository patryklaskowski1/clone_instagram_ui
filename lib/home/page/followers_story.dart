import 'package:flutter/material.dart';

class FollowersStory extends StatelessWidget {
  const FollowersStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 35,
          ),
        ),
        Text(
          'Followers story',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
