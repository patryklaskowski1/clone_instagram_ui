import 'package:clone_instagram_ui/const/const.dart';
import 'package:clone_instagram_ui/search/widgets/photo_view_with_left_side_portrait.dart';
import 'package:clone_instagram_ui/search/widgets/photo_view_with_right_side_portrait.dart';
import 'package:flutter/material.dart';

class SearchPageContent extends StatefulWidget {
  const SearchPageContent({
    super.key,
  });

  @override
  State<SearchPageContent> createState() => _SearchPageContent();
}

class _SearchPageContent extends State<SearchPageContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            SizedBox(
              width: 340,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    hintText: "Search",
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 22,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1, color: Color.fromARGB(255, 87, 85, 85)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ))
          ],
        ),
        const SizedBox(height: 10),
        const PhotoViewWithRightSidePortrait(),
        const PhotoViewWithLeftSidePortrait(),
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 234,
                width: 380,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1, bottom: 1),
                          child: Image(
                            image: AssetImage('images/dalmacja.jpg'),
                            fit: BoxFit.cover,
                            height: 115,
                            width: 125,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1, top: 1),
                          child: Image(
                            image: AssetImage('images/widok.jpg'),
                            fit: BoxFit.cover,
                            height: 115,
                            width: 125,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1, bottom: 1),
                          child: Image(
                            image: AssetImage('images/sopot.jpg'),
                            fit: BoxFit.cover,
                            height: 115,
                            width: 125,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1, top: 1),
                          child: Image(
                            image: AssetImage('images/zakopane.jpg'),
                            fit: BoxFit.cover,
                            height: 115,
                            width: 125,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 1, left: 2),
                      child: Image(
                        image: AssetImage('images/dubrownik.jpeg'),
                        height: 232,
                        width: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
