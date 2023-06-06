import 'package:flutter/material.dart';

class ArtTwoPage extends StatelessWidget {
  const ArtTwoPage({Key? key}) : super(key: key);

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
                    '             Maharashtra Floriculture',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Several villages in UP, MP, and Bihar are growing high-value marigold varieties with scientific know-how and technical assistance from CSIR scientists.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_img3.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'The farmer clusters cultivating flowers under the nationwide “CSIR Floriculture Mission” are reaping benefits through the training provided by CSIR-National Botanical Research Institute (NBRI) of Lucknow. The farmer clusters in Vidarbha region of Maharashtra are overjoyed with the marigold flowers blossoming in their farms.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'More than 192 farmers of 8 clusters in Vidarbha region alone were provided the marigold saplings in the month of June and July in 2022. Now after 2 months, the result has brought smiles on the faces of these farmers who had no work at all, especially the women farmers, informed NBRI’s Maharashtra co-ordinators Dr Vijay Wagh and Dr Manish Bhoyar. Not only are they seeing positive results, but they are also able to sell their produce at the nearby market with increasing demand for flowers due to Ganesh Chaturthi and the recently concluded Maharashtra Pola festival.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Reena Arvind Roy, a farmer from Gondia village in Maharashtra (about 150 kms from Nagpur), is selling marigold flowers for ₹100-120 per kgs. Along with Reena, 38 other women from her village are growing marigold. “I’m able to produce 12-13 kgs after a gap of every 2-3 days from my 500 sq. feet land that helps me earn ₹10,000 in a few weeks,” said Reena. Neeru Tai Mandurkar from Bandhya, Maharashtra is overjoyed to see the results in her 750 sq feet of farmland and she is cultivating it for the first time.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Marginal farmers of Uttar Pradesh, and in 6 more states including Madhya Pradesh, West Bengal, Odisha, Maharashtra and Bihar have also been included in the mission.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'India stands on the 18th rank in the floriculture industry with only 0.61% global floriculture share. It imports flowers worth ₹38.25 cr from Thailand, Netherland and other countries, according to NBRI officials.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'More farmers and lands were brought under the mission to meet the huge market of flowers in India.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    '“The objective of the mission is to enhance the income of farmers and entrepreneurship development through high value floriculture utilizing CSIR technologies,” said Prof SK Barik, director of CSIR-NBRI, Lucknow who is also mission director of CSIR Floriculture Mission.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'In Uttar Pradesh, activities of the mission are being executed in 10 districts and activities in few more districts will be initiated soon. Linking the farmer clusters from Eastern UP to Western UP via Lucknow, a UP floriculture corridor is being developed under the mission, informed Dr KJ Singh, nodal scientist of CSIR-NBRI, Lucknow.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Dr Sharad Srivastava, state coordinator UP informed that marigold saplings were distributed to farmers to cover an area of 42 hectares and training was provided. Apart from marigold, the farmers are also growing four other main crops, chrysanthemum, tuberose, gerbera, and gladiolus, he added.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "With CSIR-NBRI, Lucknow, being the nodal institute of this ambitious mission, other participating institutes are CSIR-IHBT, Palampur, CSIR-NEIST, Jorhat, CSIR-CFTRI, Mysuru and CSIR-IIIM, Jammu.",
                    style: TextStyle(fontSize: 16),
                  ),

                ]
            )
        )
    );
  }
}