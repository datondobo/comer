import 'package:flutter/material.dart';
import 'package:la_comer_ui/la_comer_ui.dart';

class UICardBanner extends StatelessWidget {
  const UICardBanner({
    super.key,
    required this.text,
    required this.image,
    required this.width,
  });

  final String text;
  final String image;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              text,
              style: UITextStyle.headline4.copyWith(fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                image,
                height: width,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
