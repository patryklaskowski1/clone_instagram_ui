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
            backgroundImage: AssetImage('images/avatar1.jpg'),
          ),
        ),
        Text(
          'Followers name',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
