import 'package:clone_instagram_ui/home/widgets/followers_story.dart';
import 'package:clone_instagram_ui/home/widgets/post_model.dart';
import 'package:clone_instagram_ui/home/widgets/user_story_avatar.dart';
import 'package:clone_instagram_ui/profile/page/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.send,
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
        backgroundColor: Colors.black,
      ),
      body: Builder(builder: (context) {
        if (selectedIndex == 1) {
          return const Text('Wyszukaj');
        }
        if (selectedIndex == 2) {
          return const Text('Dodaj zdjecie');
        }
        if (selectedIndex == 3) {
          return const Text('Reels');
        }
        if (selectedIndex == 4) {
          return ProfilePage();
        }

        return ListView(
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
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '', backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_to_photos), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
        onTap: (index) => setState(
          () {
            selectedIndex = index;
          },
        ),
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
      ),
    );
  }
}
