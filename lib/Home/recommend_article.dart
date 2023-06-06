
import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendArticleCard extends StatelessWidget {
  const RecommendArticleCard({
    required Key key,
    required this.image,
    required this.title,
    required this.more,
    required this.press,
  }) : super(key: key);

  final String image, title, more;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.7, // change the width to fit the available space
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0,10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: more.toUpperCase(),
                                style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5),
                                )
                            )
                          ]
                      )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
