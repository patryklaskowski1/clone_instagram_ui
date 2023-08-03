import 'package:flutter/material.dart';

class PostModel extends StatefulWidget {
  const PostModel({
    super.key,
  });

  @override
  State<PostModel> createState() => _PostModelState();
}

class _PostModelState extends State<PostModel> {
  final int counterLike = 0;
  final String user = 'Followers name';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.red,
                      Colors.purple,
                    ]),
                    shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('images/avatar.jpg'),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Followers name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Image(
            image: AssetImage('images/dalmacja.jpg'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 25,
          ),
          child: Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.comment,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.send,
                color: Colors.white,
              ),
              SizedBox(width: 220),
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$counterLike likes',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'description user :)',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
