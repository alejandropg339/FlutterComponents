import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical:10 ),
        children: const [
          CustomCardType1(),
          SizedBox(height:  10),
          CustomCardType2(name: 'The Best serie ever!', imageUrl: 'https://images.alphacoders.com/679/679755.png'),
          SizedBox(height:  10),
          CustomCardType2(imageUrl: 'https://images4.alphacoders.com/593/593477.jpg'),
          SizedBox(height:  10),
          CustomCardType2(imageUrl: 'https://www.wallpapertip.com/wmimgs/12-128773_hd-wallpaper-dragon-ball-pc-background.jpg'),

        ],
      )
    );
  }
}
