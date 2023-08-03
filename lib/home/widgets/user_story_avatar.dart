import 'package:flutter/material.dart';

class UserStoryAvatar extends StatelessWidget {
  const UserStoryAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 35,
              ),
            ),
            Positioned(
              bottom: 1,
              left: 50,
              child: InkWell(
                borderRadius: BorderRadius.circular(100.0),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text(
          'Your story',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
