import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../ArticleSection/art_four.dart';
import '../ArticleSection/art_one.dart';
import '../ArticleSection/art_three.dart';
import '../ArticleSection/art_two.dart';
import 'feature_product_card.dart';
import 'header_with_searchbox.dart';
import 'recommend_article.dart';
import 'title_with_more_btn.dart';





class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(key: const Key('header'), size: size),
          TitleWithMoreBtn(
            title: "Blogs & Articles",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendArticleCard(
                  key: const Key('article1'),
                  image: "assets/images/i01_1.jpeg",
                  title: "Bangladesh Floriculture",
                  more: "See more",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ArtOnePage()),
                    );
                  },
                ),
                RecommendArticleCard(
                  key: const Key('article2'),
                  image: "assets/images/art_img3.jpeg",
                  title: "Maharashtra Floriculture",
                  more: "See more",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ArtTwoPage()),
                    );
                  },
                ),
                RecommendArticleCard(
                  key: const Key('article3'),
                  image: "assets/images/art_img4.jpeg",
                  title: "SRI LANKA FLORICULTURE",
                  more: "See more",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ArtThreePage()),
                    );
                  },
                ),
                RecommendArticleCard(
                  key: const Key('article4'),
                  image: "assets/images/art_img9.jpeg",
                  title: "MALDIVES FLORICULTURE",
                  more: "See more",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ArtFourPage()),
                    );
                  },
                ),
                // Add other RecommendArticleCard widgets here
              ],
            ),
          ),
          TitleWithMoreBtn(
            title: "Featured Products",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FeatureProductCard(
                  key: const Key('product1'),
                  image: "assets/images/prodt2.jpg",
                  press: () {},
                  size: size,
                  name: "Product 1",
                  price: "৳345.00",
                ),
                FeatureProductCard(
                  key: const Key('product2'),
                  image: "assets/images/prodt2.jpg",
                  press: () {},
                  size: size,
                  name: "Product 2",
                  price: "৳450.00",
                ),
                FeatureProductCard(
                  key: const Key('product3'),
                  image: "assets/images/prodt2.jpg",
                  press: () {},
                  size: size,
                  name: "Product 3",
                  price: "৳450.00",
                ),
                FeatureProductCard(
                  key: const Key('product4'),
                  image: "assets/images/prodt2.jpg",
                  press: () {},
                  size: size,
                  name: "Product 4",
                  price: "৳450.00",
                ),
                FeatureProductCard(
                  key: const Key('product5'),
                  image: "assets/images/prodt2.jpg",
                  press: () {},
                  size: size,
                  name: "Product 5",
                  price: "৳450.00",
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

