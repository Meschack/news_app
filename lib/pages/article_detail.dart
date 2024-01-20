import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';

import '../config/sizes.dart';

class ArticleDetailScreen extends StatefulWidget {
  const ArticleDetailScreen({super.key});

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                "lib/assets/images/camille-3.jpg",
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 35),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        "She how forests are saving our planet",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.xs,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "lib/assets/images/camille-3.jpg",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            "Harry Harper · Apr 12, 2023",
                            style: const TextStyle(
                              fontSize: Sizes.sm,
                              color: Color.fromRGBO(109, 98, 101, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomText(
                        '''
Alice was beginning to get very tired of sitting by her sister on the
bank, and of having nothing to do: once or twice she had peeped into the
book her sister was reading, but it had no pictures or conversations in
it, 'and what is the use of a book,' thought Alice 'without pictures or
conversations?'

So she was considering in her own mind (as well as she could, for the
hot day made her feel very sleepy and stupid), whether the pleasure
of making a daisy-chain would be worth the trouble of getting up and
picking the daisies, when suddenly a White Rabbit with pink eyes ran
close by her.

There was nothing so VERY remarkable in that; nor did Alice think it so
VERY much out of the way to hear the Rabbit say to itself, 'Oh dear!
Oh dear! I shall be late!' (when she thought it over afterwards, it
occurred to her that she ought to have wondered at this, but at the time
it all seemed quite natural); but when the Rabbit actually TOOK A WATCH
OUT OF ITS WAISTCOAT-POCKET, and looked at it, and then hurried on,
Alice started to her feet, for it flashed across her mind that she had
never before seen a rabbit with either a waistcoat-pocket, or a watch
to take out of it, and burning with curiosity, she ran across the field
after it, and fortunately was just in time to see it pop down a large
rabbit-hole under the hedge.
                ''',
                        style: const TextStyle(fontSize: Sizes.md),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(243, 235, 233, 0.60),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(
                    style: ButtonStyle(
                      textStyle: MaterialStatePropertyAll<TextStyle>(
                        TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.waving_hand_sharp),
                        label: CustomText("1"),
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.transparent,
                          ),
                        ),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.bookmark_border_rounded),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.forward),
                      ),
                    ],
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
