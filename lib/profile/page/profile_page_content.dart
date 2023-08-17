import 'package:clone_instagram_ui/const/const.dart';
import 'package:clone_instagram_ui/profile/widgets/drawer_menu_settings_profile.dart';
import 'package:clone_instagram_ui/profile/widgets/user_photo_tag.dart';
import 'package:clone_instagram_ui/profile/widgets/user_photo_view.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isSelected = false;
  Widget userPhotoTag = const UserPhotoTag();
  Widget userPhotoView = const UserPhotoView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          nameProfile,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Builder(builder: (context) {
              return Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.add_box),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ],
              );
            }),
          ),
        ],
      ),
      endDrawer: const DrawerMenuSettingsProfile(),
      body: ListView(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/manchester.jpg'),
                  radius: 35,
                ),
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '420',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '1969',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameProfile,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'BIO profile BIO profile BIO profile BIO profile BIO profile BIO profile BIO profile BIO profile  ',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 67, 67),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                ),
                child: const Text(
                  'Edit profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 67, 67),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                ),
                child: const Text(
                  'Shere profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/dalmacja.jpg'),
                      radius: 25,
                    ),
                  ),
                  Text(
                    'Desciption',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/dalmacja.jpg'),
                      radius: 25,
                    ),
                  ),
                  Text(
                    'Desciption',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/dalmacja.jpg'),
                      radius: 25,
                    ),
                  ),
                  Text(
                    'Desciption',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/dalmacja.jpg'),
                      radius: 25,
                    ),
                  ),
                  Text(
                    'Desciption',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: Ink(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 2, color: Colors.white),
                  )),
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.grid_on,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                child: Ink(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  )),
                  child: InkWell(
                    onTap: () => setState(() {
                      isSelected = !isSelected;
                    }),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.portrait,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          userPhotoView
        ],
      ),
    );
  }
}
