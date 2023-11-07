import 'package:flutter/material.dart';
import 'package:la_comer_ui/la_comer_ui.dart';

class UICardHome extends StatefulWidget {
  const UICardHome({
    super.key,
    required this.width,
    required this.title,
    required this.image,
  });

  final double width;
  final String title;
  final String image;

  @override
  State<UICardHome> createState() => _UICardHomeState();
}

class _UICardHomeState extends State<UICardHome> {
  var imageWish = Assets.images.home.wishlistFill.svg();

  int itemCount = 0;

  void incrementCount() {
    setState(() {
      itemCount++;
    });
  }

  void decrementCount() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Wrap(
        children: [
          Card(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            widget.image,
                            width: 100,
                            height: 70,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.title,
                              style:
                                  UITextStyle.headline4.copyWith(fontSize: 12),
                            ),
                          ),
                          Text(
                            '\$14.00',
                            style: UITextStyle.headline4.copyWith(
                              color: UIColors.greenComer,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              '1Kg',
                              style:
                                  UITextStyle.subtitle1.copyWith(fontSize: 10),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: UIColors.greenComer,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 3),
                                    GestureDetector(
                                      onTap: decrementCount,
                                      child: Assets.images.home.menos
                                          .svg(width: 22),
                                    ),
                                    Text(
                                      '${itemCount.toString()} Kg',
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    GestureDetector(
                                      onTap: incrementCount,
                                      child:
                                          Assets.images.home.mas.svg(width: 22),
                                    ),
                                    const SizedBox(width: 3),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          imageWish =
                              imageWish == Assets.images.home.wishlist.svg()
                                  ? Assets.images.home.wishlistFill.svg()
                                  : Assets.images.home.wishlist.svg();
                        });
                      },
                      child: imageWish,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
