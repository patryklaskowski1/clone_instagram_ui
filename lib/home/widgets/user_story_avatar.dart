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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 75,
                width: 75,
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
                      foregroundImage: AssetImage('images/manchester.jpg'),
                    ),
                  ),
                ),
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
