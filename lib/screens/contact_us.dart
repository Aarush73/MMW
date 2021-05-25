import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import '../widgets/drawer.dart';
import '../widgets/social_media_handles.dart';

class ContactUs extends StatelessWidget {
  static const routeName = '/contact-us';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final numberController = TextEditingController();

  void addData(BuildContext context) {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        messageController.text.isEmpty ||
        numberController.text.isEmpty ||
        !emailController.text.contains('@')) {
      return;
    }
    final data = FirebaseFirestore.instance.collection('contact_data');
    data.add({
      'name': nameController.text,
      'email': emailController.text,
      'contact': numberController.text,
      'message': messageController.text,
    });
    nameController.clear();
    emailController.clear();
    numberController.clear();
    messageController.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: Theme.of(context).appBarTheme.textTheme?.headline6,
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(25),
              child: Text(
                'Get in Touch with Us',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.contact_mail,
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('E-Mail : info@makemywebsite.com.au',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.contact_phone,
                  size: 28,
                ),
                SizedBox(width: 10),
                Text('Phone : 1300769302',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.connect_without_contact_rounded,
                  size: 28,
                ),
                SizedBox(width: 10),
                Text(
                  'Address : 129A Watton Street Werribee',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'OpenSans',
                  ),
                )
              ],
            ),
            Text('Victoria 3030, Australia',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                )),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              controller: nameController,
              onSubmitted: (_) {},
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Contact No.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              controller: numberController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                  labelText: 'Message', border: OutlineInputBorder()),
              controller: messageController,
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () => addData(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
              child: Text('Send'),
            ),
            //SizedBox(height: 30),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}
