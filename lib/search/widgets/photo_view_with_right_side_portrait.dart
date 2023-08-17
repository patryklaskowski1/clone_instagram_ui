
import 'package:flutter/material.dart';

class PhotoViewWithRightSidePortrait extends StatelessWidget {
  const PhotoViewWithRightSidePortrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
                        image: AssetImage('images/sopot.jpg'),
                        fit: BoxFit.cover,
                        height: 115,
                        width: 125,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1, top: 1),
                      child: Image(
                        image: AssetImage('images/dubrownik.jpeg'),
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
                        image: AssetImage('images/widok.jpg'),
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
                    image: AssetImage('images/dalmacja.jpg'),
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
    );
  }
}
