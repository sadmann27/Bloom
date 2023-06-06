import 'package:flutter/material.dart';

class ArtFourPage extends StatelessWidget {
  const ArtFourPage({Key? key}) : super(key: key);

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
                    'Temperature is the biggest challenge for cultivation in the Maldives',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A pearly white beach and a vast blue ocean. This is the picturesque location for which many tourists travel to the Maldives every year. However, these islands in the Indian Ocean are tiny and are highly dependent on imports for fresh produce. They currently import 95% of their food. Fruit and vegetables are brought in from afar to provide food for the many tourists as well as the locals.',
                    style: TextStyle(
                      fontSize: 16,

                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_img6.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'That could be done more efficiently, according to a group of university students from TU Delft. As part of an assignment, they designed a modern self-sufficient greenhouse in order to produce food locally. And where most study assignments remain a plan on paper, this greenhouse actually might be realized on one of the islands in the near future.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Biggest challenge is temperature',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    'The plans of the Maldives Matter Project are already very advanced, says Carmen Jansen op de Haar of Resilient Island. "It will be a semi-closed greenhouse of one hectare in size. Two-thirds of it will be used to grow lettuce, there will be tomatoes in one-third and possibly strawberries at a later stage. There will be a hydroponic system for lettuce cultivation, for which we collaborate with Van der Hoeven. There is plenty of sunlight and an occasional shower. The biggest challenge for growing in the Maldives is the temperature and the high humidity. On the islands it is between 25 and 30 degrees Celsius all year round, both during the day and at night. Because this temperature difference is so small, many fruits and vegetables cannot grow in that climate, so that the Maldives become highly dependent on imports."',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_img7.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    '"In order to keep the temperature in the greenhouse at the right level, we need cooling technology. We are also looking at Deep Water Source Cooling, where you use the temperature differences in the water. A new technique that we certainly will not apply immediately, but that is worth investigating.”',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Test greenhouse',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'To investigate the feasibility of the thought out plans, the group will first set up a miniature version of the greenhouse. “We have already done a test with tomatoes. The cultivation results in those circumstances were very positive. With a mini greenhouse we mainly want to test the techniques.”',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/art_img08.jpeg',
                    width: 400,
                    height: 300,
                    // adjust the width and height as needed
                  ),
                  const Text(
                    'Supply to resorts',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The choice of crops will be tailored to the demand of resorts. “Our market research showed that there was a great need for lettuce, however if we would produce only lettuce then it would be too much. Lettuce and strawberries are fragile in transport and therefore very suitable for local cultivation. The intention is to supply various resorts with fresh produce packages."',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The exact location for the greenhouse has not yet been determined. “We have selected three islands, each of which has potential in a different way. All three are local islands, which ensures that the local population can easily work in the greenhouse later on. "Although the Maldives have many luxury resorts, not every resort will be supplied." We are looking for resorts that share our vision. Some say that they strive for sustainability, but in practice nothing much is achieved. It is important that the resorts with which we work support our principles."',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Chain reaction",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Further in the future, the Resilient Island team hopes to broaden the project. “Our goal is to make the Maldives less dependent on the rest of the world. We are hoping for a chain reaction to other Small Island Developing States, as these countries are called that are highly dependent on the mainland. The corona crisis once again made it very clear that it is important that countries and islands can meet their own needs. Air traffic almost came to a standstill, making it even more evident why it is so important that these kinds of countries can be self-sufficient."',
                    style: TextStyle(fontSize: 16),
                  ),

                ]
            )
        )
    );
  }
}