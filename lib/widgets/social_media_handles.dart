import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SocialMedia extends StatelessWidget {
  Widget socialMedia(IconData icon, String link) {
    return ElevatedButton(
      onPressed: () async {
        final url = link;
        await launch(url);
      },
      child: Icon(icon, size: 25),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(height: 35),
        Text('Follow us on our Social Media handles',
            style: theme.appBarTheme.textTheme.headline5,
            textAlign: TextAlign.center),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            socialMedia(MdiIcons.instagram,
                'https://www.instagram.com/makemywebsite.mmw/'),
            socialMedia(MdiIcons.facebook,
                'https://www.facebook.com/makemywebsite.com.au'),
            socialMedia(MdiIcons.youtube,
                'https://www.youtube.com/channel/UC4y8RReSXlnNf4IWO2eTalg'),
            socialMedia(MdiIcons.linkedin,
                'https://www.linkedin.com/company/make-my-website-pty-ltd/'),
            socialMedia(MdiIcons.twitter, 'https://twitter.com/makemywebsite16')
          ],
        ),
        SizedBox(height: 20),
        Text('We are Everywhere!', style: theme.textTheme.headline3),
      ],
    );
  }
}
