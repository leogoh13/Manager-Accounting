import 'package:flutter/material.dart';
import 'package:improving_your_ui/about_me/my_social_card.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Raymond Goh Wee Yong'),
          Text('Software Developer'),
          Text('This app is just for my knowledge implementaion ONLY'),
          Divider(),
          Row(
            children: <Widget>[
              MySocialCard(
                assetString: 'images/facebook-logo.png',
                text: 'Facebook',
              ),
              Divider(),
            ],
          )
        ],
      ),
      // TODO: remember to add the reference to the author of the icon pack
      // Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>
    );
  }
}
