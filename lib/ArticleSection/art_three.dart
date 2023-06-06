import 'package:flutter/material.dart';

class ArtThreePage extends StatelessWidget {
  const ArtThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Go back'),
          backgroundColor: const Color(0xFF0C9869),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Breakthrough in fertilizer ban as government agrees on imports for floriculture',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The ban on fertilizer imports will be relaxed for floriculture. Discussions are going on between flower growers and the Ministry of Tourism about the modalities to be put in place.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_img4.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'The modalities are expected to revolve around the type of fertilizer to be imported, the quantities and how the distribution will be carried out. One round of discussions had already taken place on the 19th of July and another is expected to take place next week.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'It is reliably learnt that the decision to allow fertilizer imports for floriculture, which brings in millions of dollars to the country’s kitty every year, was taken because it is a non– edible product. It is a small but significant step forward for this sector but also for the wider agriculture industry which is wilting under the ban. Farmers have started regular protests in the country asking for fertilizer for their fields.  ',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Floriculture requires a special type of fertilizer which releases nutrients slowly and is water soluble. The fertilizer has to be of high quality to ensure the product is also of high quality, especially for the export market. Although the ban may not have had an immediate impact on the sector, some growers are reported to have had fertilizer in stock, it is likely to start showing in the months to come.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Every year, Sri Lanka exports flowers to between 20-25 countries including the Netherlands, Japan, Middle East, the UK and France. Last year earnings were around \$12.9 million and the year before topped \$17 million.',
                    style: TextStyle(fontSize: 16),
                  ),


                  const SizedBox(height: 16),
                  const Text(
                    'There are over 200 flower associations linked to the floriculture industry which are based in all the country’s districts. The industry provides direct employment to about 10-15, 000 workers and has close to 200, 000 extended beneficiaries.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),

                ]
            )
        )
    );
  }
}