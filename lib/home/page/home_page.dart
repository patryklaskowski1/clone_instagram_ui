import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.heart_broken,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 55, 55),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserStoryAvatar(),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 35,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(
            height: 0.2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

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
              bottom: 10,
              left: 55,
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
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
