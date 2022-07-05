import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: const Text('I am a title'),
            subtitle: const Text('lorem ipsum dolor sit amet in non'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}