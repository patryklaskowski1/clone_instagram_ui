import 'package:flutter/material.dart';

class DrawerMenuSettingsProfile extends StatelessWidget {
  const DrawerMenuSettingsProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 500,
          height: 600,
          color: const Color.fromARGB(255, 87, 85, 85),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.horizontal_rule,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Settings and provacy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.av_timer,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Yours activity',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.data_saver_on,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Archive',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.qr_code_scanner,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'QR code',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.bookmark_border,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Saved',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.group,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Supervison',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.credit_card,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Orders and payments',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.check_circle_outline,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Meta Veryified',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.format_list_bulleted,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Close Friends',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.star_border,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Favorites',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.groups,
                      size: 28,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Group profiles',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
