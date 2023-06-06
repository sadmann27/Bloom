import 'package:flutter/material.dart';

class ArtOnePage extends StatelessWidget {
  const ArtOnePage({Key? key}) : super(key: key);

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
                    'Floriculture: A lucrative sector in Bangladesh',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The current challenges for floriculture and exporting flowers are the need for knowledge of many farmers on floriculture technology, the unavailability of seeds, and the need for special compound fertilizers, among others.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/i01_1.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'Flowers are the symbols of beauty and purity.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Nowadays flowers have become an important part of the country\'s economy. Over the years, the demand for flowers as an agricultural product has been rising in Bangladesh making floriculture a potential sector.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The soil and climate of Bangladesh are quite suitable for floriculture. Many exotic flowers can be grown in our country as the weather is tropical.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'In 1983, a farmer named Sher Ali Sardar started commercial floriculture with tuberose flowers on a 30-acre of land in Jashore. At present, flowers are cultivated on 6,000 hectares of land in 24 districts including Jashore, Kushtia, Jhenidah, Chuadanga, Gazipur, Chattogram, Narayanganj, and Cumilla.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About 15 to 20 lakh people are earning their livelihood through floriculture. Various flowers, especially tuberose, gladiolus, rose, marigold, lotus, gerbera, hyacinth, chrysanthemum, and lily, are now being commercially cultivated in Bangladesh.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'According to recent statistics published by the Dhaka Chamber of Commerce and Industry (DCCI), the local market of flowers and cut foliage has reached TK1,600 crore per annum and is growing by 10 percent every year.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_pic2.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'In 2014-15, approximately 57,000 tonnes of flowers were cultivated which generated a revenue of TK800 crores. The development and growth of floriculture in the last five years has been promising.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Also, the overall growth in various sectors of floriculture development has been very encouraging in the last few years since 2014-15.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'In 1991, the government of Bangladesh listed flowers as an exportable product. According to floriculture industry insiders, Bangladesh exported flowers and floral products to several countries including India, Italy, Portugal, Saudi Arabia, Germany, France, Denmark, and Britain.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "According to Export Promotion Bureau (EPB), the country's export earnings from cut flowers and foliage for the July to January period of the fiscal year 2018-19 touched \$3.98 million, which was \$0.02 million in the 2017-18 fiscal year.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "EPB data revealed that Bangladesh exported cut flowers, leaves, trees, plants, bulbs, and roots worth \$86,000(about TK72 lakh) in 2016-17 fiscal and \$78,000(about TK65 lakh) in the previous fiscal.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "The current challenges for floriculture and exporting flowers are the need for knowledge of many farmers on floriculture technology, the unavailability of seeds, and the lack of special compound fertilizers, among others. ",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Besides, shortage of international standard production technology, greenhouse construction materials, high airfares, dependence on imports from India and lack of necessary research on flowers and not having a national flower policy are also barriers to prosperous floriculture.  Florists are also at natural risk like floods, cyclones, tidal surges, etc.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "For the further development of the potential floriculture sector in Bangladesh, authorities must take some steps including ensuring the supply of sufficient and newer seeds, covering farmers and traders under high-value crops, increasing credit opportunities on easy terms by Bangladesh Bank, private banks, and microfinance institutions, establishing permanent flower wholesale market in big cities is mandatory.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Also, infrastructure development through investing in more cold storage and warehouses, lowering airfares, allowing more space for flower export, arranging training programs for florists for the cultivation of flowers in a scientific way, and giving opportunities to florists to participate in national and international conferences and workshops and strengthening the research activities on flowers of the Bangladesh Agriculture Research Institute and formulating a national flower policy at the initiative of the Ministry of Agriculture, is much needed.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "If the agro-friendly government provides the necessary assistance to the farmers, it will be possible to expand flower cultivation on a large scale on a commercial basis, and as a result, it will create employment opportunities for many unemployed people, which will contribute a lot to the development of socio-economic conditions of the country and alleviation of the rural poverty.",
                    style: TextStyle(fontSize: 16),
                  ),
                ]
            )
        )
    );
  }
}