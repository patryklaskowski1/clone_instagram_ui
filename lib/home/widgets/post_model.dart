import 'package:clone_instagram_ui/const/const.dart';
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
  Color _iconChangeColor = Colors.white;
  IconData _favoriteIcon = Icons.favorite_border;

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
                    gradient: gradientColors, shape: BoxShape.circle),
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
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  _favoriteIcon,
                  color: _iconChangeColor,
                ),
                onPressed: () {
                  setState(() {
                    _iconChangeColor = Colors.red;
                    _favoriteIcon = Icons.favorite;
                  });
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.comment,
                  color: iconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  color: iconColor,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 180),
              IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                  color: iconColor,
                ),
                onPressed: () {},
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
