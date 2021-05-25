import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/quiz.dart';
import '../widgets/slider.dart';
import '../widgets/social_media_handles.dart';

class ServiceDetail extends StatelessWidget {
  static const routeName = '/service-detail';
  Widget websiteLink(String name, String link) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Text(
            name,
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
                fontFamily: 'QuickSand'),
          ),
          onTap: () async {
            final url = link;
            await launch(url);
          },
        ),
      ],
    );
  }

  Widget rowBuilder(String name1, String link1, String name2, String link2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        websiteLink(name1, link1),
        SizedBox(width: 10),
        websiteLink(name2, link2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = args['title'];
    final des = args['description'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
            title != 'Social Marketing' ? title : 'Social Media Marketing'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Slider1(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text(des,
                  style: theme.textTheme.headline6, textAlign: TextAlign.left),
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                      'These are some of our websits visit them and have a look',
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.center),
                  SizedBox(height: 20),
                  rowBuilder(
                      '123smilephotography',
                      'https://www.123smilephotography.com/',
                      'Find us a Builder',
                      'https://www.findusabuilder.com.au/'),
                  SizedBox(height: 10),
                  rowBuilder(
                      'Prodigy Early Learn',
                      'https://www.prodigyearlylearning.com.au/',
                      'JAY KAY 360',
                      'http://www.jaykay360.com/'),
                  SizedBox(height: 10),
                  rowBuilder(
                      'Stoprent Properties',
                      'http://www.stoprentproperties.com.au/',
                      'CoreWall Build',
                      'http://corewallbuild.com.au/'),
                  SizedBox(height: 10),
                  rowBuilder(
                      'Toy box Early Learning',
                      'http://toyboxearlylearning.com.au/',
                      'Shivas Biz',
                      'https://www.shivasbiz.com/'),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (title == 'Web Designing')
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(Quiz.routeName),
                child: Text('Want to have a Website?',
                    style: theme.textTheme.headline5),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}
