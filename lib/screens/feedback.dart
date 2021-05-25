import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/drawer.dart';
import '../widgets/social_media_handles.dart';

class FeedbackCus extends StatelessWidget {
  static const routeName = '/feedback';

  final nameController = new TextEditingController();

  final urlController = new TextEditingController();

  final feedbackController = new TextEditingController();

  void url() async {
    const url1 = 'https://www.123smilephotography.com/';
    if (await canLaunch(url1)) {
      await launch(url1);
    } else {
      throw 'Could not launch $url1';
    }
  }

  void feedback(BuildContext context) async {
    if (nameController.text.isEmpty ||
        urlController.text.isEmpty ||
        feedbackController.text.isEmpty ||
        (!urlController.text.contains('https') ||
            !urlController.text.contains('http')) ||
        !urlController.text.contains('.com')) {
      return;
    }
    FirebaseFirestore.instance.collection('feedback').add({
      'name': nameController.text,
      'url': urlController.text,
      'feedback': feedbackController.text
    });
    nameController.clear();
    urlController.clear();
    feedbackController.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FeedBack',
          style: Theme.of(context).appBarTheme.textTheme?.headline6,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              width: double.infinity,
              color: Colors.black54,
              child: Text(
                'Happy Clients',
                textAlign: TextAlign.center,
                style: theme.appBarTheme.textTheme?.headline6,
              ),
            ),
            Container(
              color: Colors.black54,
              padding: EdgeInsets.only(
                  left: mediaQuery.size.width * 0.2,
                  top: 20,
                  bottom: 30,
                  right: mediaQuery.size.width * 0.2),
              child: Image.asset(
                'assets/images/123smilephotography-big.png',
                alignment: Alignment.center,
                width: mediaQuery.size.width * 0.6,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://www.makemywebsite.com.au/wp-content/uploads/revslider/testimonials-tab/Amanie-Kalache.jpg',
                  ),
                ),
                SizedBox(width: 20),
                Image.network(
                    'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/five-stars.png')
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: url,
              child: Text(
                'Amanie Kalache - www.123smilephotography.com',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Absolutely LOVE my website!! This team is beyond amazing. Had a bad experience with another designer and these guys definitely came to my rescue!! Thank you so much. I LOVE LOVE LOVE my website! Thank you all so much again! Definitely will recommend you to everyone I know!',
              textAlign: TextAlign.center,
              style: theme.textTheme.headline6,
            ),
            SizedBox(height: 25),
            Text(
              'Write Your FeedBack Here!',
              style: theme.appBarTheme.textTheme?.headline6,
            ),
            SizedBox(height: 30),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
            ),
            SizedBox(height: 10),
            TextField(
              controller: urlController,
              decoration: InputDecoration(
                  labelText: 'URL of the Website',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
            ),
            SizedBox(height: 10),
            TextField(
              controller: feedbackController,
              maxLines: 10,
              decoration: InputDecoration(
                  labelText: 'FeedBack',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => feedback(context),
              child: Text('Send'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            ),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}
