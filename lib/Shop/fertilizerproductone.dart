import 'package:flutter/material.dart';

import '../constants.dart';

class FertilizerProductOne extends StatelessWidget {
  const FertilizerProductOne({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding:EdgeInsets.only(top:size.height * 0.12, left: kDefaultPadding, right: kDefaultPadding),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Fertilizer",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Willow Fertilizer",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                    text: "Price\n"
                                ),
                                TextSpan(
                                  text: "৳250",
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: kDefaultPadding),
                          Expanded(
                            child: Image.asset("assets/images/mainproductone.png",
                                fit: BoxFit.fill),

                          ),

                        ],
                      ),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black12),
                            children: [
                              const TextSpan(
                                text: "Quantity\n",

                              ),
                              TextSpan(
                                text:"1 KG",
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                              )
                            ]
                        ),
                      )
                    ],

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
