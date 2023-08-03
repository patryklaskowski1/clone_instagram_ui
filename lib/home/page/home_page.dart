import 'package:clone_instagram_ui/home/widgets/followers_story.dart';
import 'package:clone_instagram_ui/home/widgets/post_model.dart';
import 'package:clone_instagram_ui/home/widgets/user_story_avatar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;

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
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserStoryAvatar(),
                FollowersStory(),
                FollowersStory(),
                FollowersStory(),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(
            height: 0.2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          PostModel(),
          PostModel(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '', backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_to_photos), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
      ),
    );
  }
}
