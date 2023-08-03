import 'package:flutter/material.dart';

class FollowersStory extends StatelessWidget {
  const FollowersStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.yellow,
                  Colors.red,
                  Colors.purple
                ]),
                shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('images/avatar1.jpg'),
                ),
              ),
            ),
          ),
        ),
        const Text(
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
