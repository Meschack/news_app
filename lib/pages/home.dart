import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/components/molecules/featured_article_card.dart';

import '../config/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final featureArticles = [
    {
      "image": 'lib/assets/images/img.png',
      "title": "Experience the Serenity of Japan's",
      "category": "Technology"
    },
    {
      "image": 'lib/assets/images/building.jpg',
      "title": "How to setup your workspace",
      "category": "Interior"
    },
    {
      "image": 'lib/assets/images/camille-3.jpg',
      "title": "Discover Camille, an actress in the new movie Berlin",
      "category": "Movie"
    },
    {
      "image": 'lib/assets/images/mac.jpg',
      "title": "Apple launch a new product",
      "category": "Apple"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          greetings(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: featureArticles
                        .map(
                          (e) => Row(
                            children: [
                              featureArticleCard(
                                e,
                                MediaQuery.of(context).size.width * 0.75,
                                context,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomText(
                      "Just For You",
                      style: const TextStyle(
                        fontSize: Sizes.xs,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: featureArticles
                        .map(
                          (e) => Row(
                            children: [
                              featureArticleCard(
                                e,
                                MediaQuery.of(context).size.width * 0.75,
                                context,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
