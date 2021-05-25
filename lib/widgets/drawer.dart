import 'package:flutter/material.dart';

import '../screens/about_us.dart';
import '../screens/services.dart';
import '../screens/contact_us.dart';
import '../screens/feedback.dart';

class MainDrawer extends StatelessWidget {
  Widget drawer(IconData icon, String title, Function func) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: ListTile(
        leading: Icon(
          icon,
          size: 36,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'QuickSand',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        onTap: func,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Make My Website'),
          ),
          drawer(Icons.home, 'Home', () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          Divider(thickness: 3, color: Colors.black45),
          drawer(Icons.design_services, 'Our Services', () {
            Navigator.of(context).pushReplacementNamed(OurServices.routeName);
          }),
          Divider(thickness: 3, color: Colors.black45),
          drawer(Icons.people, 'About Us', () {
            Navigator.of(context, rootNavigator: true)
                .pushReplacementNamed(AboutUs.routeName);
          }),
          Divider(thickness: 3, color: Colors.black45),
          drawer(Icons.contact_page, 'Contact Us', () {
            Navigator.of(context).pushReplacementNamed(ContactUs.routeName);
          }),
          Divider(thickness: 3, color: Colors.black45),
          drawer(Icons.feedback, 'FeedBack', () {
            Navigator.of(context).pushReplacementNamed(FeedbackCus.routeName);
          }),
          Divider(thickness: 3, color: Colors.black45),
        ],
      ),
    );
  }
}
