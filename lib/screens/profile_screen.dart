import 'package:flutter/material.dart';
import 'package:roziroti/pages/login_page.dart';

import '../widgets/tile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.crisis_alert_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(Icons.more)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6)),
                        child: const SizedBox(
                            height: 18,
                            width: 18,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 10,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Andrew Ainsley",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "+928282829292",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Tile(
                  icon: Icon(Icons.people),
                  text: 'Edit Profile',
                ),
                const Tile(
                  icon: Icon(Icons.location_city),
                  text: 'Location',
                ),
                const Tile(
                  icon: Icon(Icons.notification_add),
                  text: 'Notification',
                ),
                const Tile(
                  icon: Icon(Icons.payment),
                  text: 'Payment',
                ),
                const Tile(
                  icon: Icon(Icons.security),
                  text: 'Securitys',
                ),
                const Tile(
                  icon: Icon(Icons.language),
                  text: 'Language',
                ),
                const Tile(
                  icon: Icon(Icons.dark_mode),
                  text: 'Dark Mode',
                ),
                const Tile(
                  icon: Icon(Icons.privacy_tip),
                  text: 'Privacy Policy',
                ),
                const Tile(
                  icon: Icon(Icons.help_outline),
                  text: 'Help Center',
                ),
                const Tile(
                  icon: Icon(Icons.inbox),
                  text: 'Invite Freinds',
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.login,
                        color: Colors.red,
                        size: 25,
                      ),
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        'Log Out',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
