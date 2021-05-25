import 'package:flutter/material.dart';

import '../widgets/slider.dart';
import '../widgets/drawer.dart';
import '../widgets/video_player.dart';
import '../widgets/social_media_handles.dart';
import 'about_us.dart';
// import 'contact_us.dart';
// import 'feedback.dart';
import 'services.dart';
import 'quiz.dart';
import 'service_detail.dart';

class HomeScreen extends StatelessWidget {
  Widget imageBuilder(BuildContext context, String img, String title,
      String description, String networkimg) {
    return InkWell(
      onTap: () => newPage(context, img, title, description, networkimg),
      child: Container(
        width: 180,
        child: Card(
          color: Colors.black,
          elevation: 5,
          child: Stack(children: [
            Container(margin: EdgeInsets.all(20), child: Image.asset(img)),
            Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child:
                    Text(title, style: Theme.of(context).textTheme.headline5)),
          ]),
        ),
      ),
    );
  }

  void newPage(BuildContext ctx, String img, String title, String description,
      String networkimg) {
    Navigator.of(ctx).pushNamed(ServiceDetail.routeName, arguments: {
      'img': img,
      'title': title,
      'description': description,
      'networkimg': networkimg,
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make My Website'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoExample(),
            SizedBox(height: 15),
            Text(
              'IF IT’S NOT DONE TO PERFECTION, DON’T DO IT AT ALL',
              style: theme.appBarTheme.textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Text(
              'We build successful responsive mobile sites that genuinely connect with your target audience.',
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            Text('Our Works', style: theme.textTheme.headline3),
            SizedBox(height: 25),
            Slider1(),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(Quiz.routeName),
              child: Text('Want to have a Website?',
                  style: theme.textTheme.headline5),
              style: ElevatedButton.styleFrom(primary: Colors.black),
            ),
            SizedBox(height: 35),
            Text('About Us', style: theme.textTheme.headline3),
            SizedBox(height: 5),
            Text(
                'Make My Website is a digital agency made up  of extremely talented, highly trained and skilled professionals who work with you to create your online presence and are dedicated to meet the goals and guidelines to deliver your project.',
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6),
            Row(
              children: [
                Image.asset('assets/images/online-marketing.png',
                    fit: BoxFit.cover, width: 175),
                Image.asset('assets/images/online-marketing.png',
                    fit: BoxFit.cover, width: 175),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AboutUs.routeName),
                child: Text('About Us', style: theme.textTheme.headline6)),
            SizedBox(height: 35),
            Text('Our Services', style: theme.textTheme.headline3),
            SizedBox(height: 10),
            Text(
                'Elevate Your Businesses Capabilities With One Step. We offer a wide variety of design services.',
                style: theme.textTheme.headline6,
                textAlign: TextAlign.center),
            SizedBox(height: 15),
            Row(
              children: [
                imageBuilder(
                    context,
                    'assets/images/web design.png',
                    'Web Designing',
                    'The technological wizardry has made it a need to have a presence online. The competition is no longer confined to your street, city or even nation, it is beyond boundaries. To widen your audience, a website is a necessity, rather a good website for that matter. And it does not end here, you ought to have a website which is user-friendly, informative, attractive and a responsive one. Our experts design the website keeping in mind the needs of your business and the expectations of the targeted audience.',
                    'networkimg'),
                imageBuilder(
                    context,
                    'assets/images/seo-service.png',
                    'SEO',
                    'Search Engine Optimization, often known as SEO is one of the main marketing channels to endorse website exposure via higher visibility in search engines. It is carried out to gain a surge in the website traffic. Search Engine Optimization can be performed in two ways. Either you can optimize by yourself or hire a search engine optimization company for doing it for me. Here, choosing the former option may not be promising enough for satisfactory outcomes, while choosing the latter is the best choice to get a higher rank for your website on search engines, like Google, etcetera.',
                    'networkimg'),
              ],
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(OurServices.routeName),
              child: Text('View All Sevices', style: theme.textTheme.headline6),
            ),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}
