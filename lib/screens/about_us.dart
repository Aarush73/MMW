import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/social_media_handles.dart';
import '../screens/contact_us.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/about-us';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Make My Website',
          style: theme.appBarTheme.textTheme.headline6,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text('We Don\'t Just Build Websites,',
                  style: theme.appBarTheme.textTheme.headline6),
            ),
            Text('We Build Your Online Buisness!',
                style: theme.appBarTheme.textTheme.headline6),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/mmw-about-responsive.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'At Make My Website, we are a group of highly trained, skilled professionals who work with you to create your online presence and are dedicated to meet the goals and guidelines to deliver your project. Our Office is located in the center of Werribee. However, we are physically present in Sydney, Melbourne, and Brisbane with clients all over Australia. We are one phone call away to give your business an online presence.',
                style: theme.textTheme.headline6,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(ContactUs.routeName),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
              child: Text(
                'Contact Us',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                    'We Make Websites',
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/responsive-design.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    child: Text(
                      'Websites Which Stand Out For Your Buisness',
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.7,
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/customer-satisfaction.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    child: Text(
                      'We Endeavour To Provide The Best Customer Satisfaction',
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.7,
                  ),
                  Image.network(
                      'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/business-growth.png'),
                  Container(
                    child: Text(
                      'It’s All About Making Your Business Successful',
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.7,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Why Choose Us?',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Image.network(
                      'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Futuristic-Approach-mmw.png'),
                  Container(
                    child: Text(
                      'We Have Futuristic Approach',
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.4,
                  ),
                ]),
                SizedBox(width: 15),
                Column(children: [
                  Image.network(
                      'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Understand-Your-Identity-mmw.png'),
                  Container(
                    child: Text(
                      'We Understand Your Identity',
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.4,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Image.network(
                      'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Aim-to-Excel-mmw.png'),
                  Container(
                    width: mediaQuery.size.width * 0.4,
                    child: Text(
                      'We Aim To Excel',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
                SizedBox(width: 15),
                Column(children: [
                  Image.network(
                      'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Personal-mmw.png'),
                  Container(
                    child: Text(
                      'We Make It Personal',
                      textAlign: TextAlign.center,
                    ),
                    width: mediaQuery.size.width * 0.4,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15),
            Image.network(
                'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Result-icon-mmw.png'),
            Text('We Are Result Driven'),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}
