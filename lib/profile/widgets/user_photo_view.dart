import 'package:flutter/material.dart';

class UserPhotoView extends StatelessWidget {
  const UserPhotoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(70),
      child: Column(
        children: [
          Center(
            child: Text(
              'Capture the moment with a friend',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Create your firs post',
            style: TextStyle(
              color: Color.fromARGB(255, 15, 136, 235),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
