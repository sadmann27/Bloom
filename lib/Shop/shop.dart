import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'bar_set.dart';
import 'categories_widget.dart';
import 'details_screen.dart';
import 'Product.dart';


class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  int get index => 0;
  bool showBestSelling = true;
  bool showFertilizerSelling = true;
  bool showPlantSelling = true;
  bool showToolsSelling = true;
  bool showSeedsSelling = true;
  bool showPotsSelling = true;
  bool showInsecticidesSelling = true;
  bool showAccessoriesSelling = true;
  bool showDecorationSelling = true;
  bool showSoilSelling = true;


  void switchToPlantsSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = true;
      showFertilizerSelling = false;

      showToolsSelling = false;
      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
  }

  void switchToBestSellingSection() {
    setState(() {
      showBestSelling = true;
      showPlantSelling = false;
      showFertilizerSelling = false;

      showToolsSelling = false;
      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
  }

  void switchToFertilizerSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = true;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
  }

  void switchToSeedsSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = true;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
    // Implement the switchToSeedsSection method
  }

  void switchToToolsSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = true;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
    // Implement the switchToToolsSection method
  }

  void switchToPotsSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = true;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
    // Implement the switchToPotsSection method
  }

  void switchToInsecticidesSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = true;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
    // Implement the switchToInsecticidesSection method
  }

  void switchToAccessoriesSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = true;
      showDecorationSelling = false;
      showSoilSelling = false;
    });
    // Implement the switchToAccessoriesSection method
  }

  void switchToDecorationSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = true;
      showSoilSelling = false;
    });
    // Implement the switchToDecorationSection method
  }

  void switchToSoilSection() {
    setState(() {
      showBestSelling = false;
      showPlantSelling = false;
      showFertilizerSelling = false;
      showToolsSelling = false;

      showSeedsSelling = false;
      showPotsSelling = false;
      showInsecticidesSelling = false;
      showAccessoriesSelling = false;
      showDecorationSelling = false;
      showSoilSelling = true;
    });
    // Implement the switchToSoilSection method
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BarSet(),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              "Bloom Shop",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    CategoriesWidget(
                      onPlantsButtonPressed: switchToPlantsSection,
                      onBestSellingButtonPressed: switchToBestSellingSection,
                      onFertilizerButtonPressed: switchToFertilizerSection,
                      onSeedsButtonPressed: switchToSeedsSection,
                      onToolsButtonPressed: switchToToolsSection,
                      onPotsButtonPressed: switchToPotsSection,
                      onInsecticidesButtonPressed: switchToInsecticidesSection,
                      onAccessoriesButtonPressed: switchToAccessoriesSection,
                      onDecorationButtonPressed: switchToDecorationSection,
                      onSoilButtonPressed: switchToSoilSection,
                    ),
                    const SizedBox(height: 20),
                    if (showBestSelling)
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        child: const Text(
                          "Best Selling",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    if (showBestSelling) SizedBox(
                      height: 540,
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: kDefaultPadding,
                        crossAxisSpacing: kDefaultPadding,
                        children: [
                          GestureDetector(
                            onTap: () {
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]),),
                              ); */
                            },
                            child: ItemsWidget(
                              productName: "Willow Fertilizer",
                              price: "৳250",
                              imagePath: "assets/images/mainproductone.png",
                              boxColor: Color(0xCBFFCA28),
                            ),
                          ),




                          ItemsWidget(
                            productName: "Pink flower",
                            price: "৳1999",
                            imagePath: "assets/images/flowerrtwo.png",
                            boxColor: Color(0xFFF8BBD0),
                          ),
                          ItemsWidget(
                            productName: "Sunflower Seeds",
                            price: "৳150",
                            imagePath: "assets/images/seedsone.png",
                            boxColor: Color(0xFF8D6E63),
                          ),
                          ItemsWidget(
                            productName: "Flowering Gloves",
                            price: "৳750",
                            imagePath: "assets/images/glovesone.png",
                            boxColor: Color(0xFF1565C0),
                          ),
                          ItemsWidget(
                            productName: "Garden Gnome",
                            price: "৳500",
                            imagePath: "assets/images/decorationone.png",
                            boxColor: Color(0xFF4CAF50),
                          ),
                          ItemsWidget(
                            productName: "Cool Insecticide",
                            price: "৳399",
                            imagePath: "assets/images/insecticide.png",
                            boxColor: Color(0xFFFF6E40),
                          ),
                        ],
                      ),
                    ),
                    if (showPlantSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Plants",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Pink flower",
                                  price: "৳1999",
                                  imagePath: "assets/images/flowerrtwo.png",
                                  boxColor: Color(0xFFF8BBD0),
                                ),
                                ItemsWidget(
                                  productName: "Red flower",
                                  price: "৳1560",
                                  imagePath: "assets/images/flowerfour.png",
                                  boxColor: Color(0xFFFF9E80),
                                ),
                                ItemsWidget(
                                  productName: "White flower",
                                  price: "৳1999",
                                  imagePath: "assets/images/flowerthree.png",
                                  boxColor: Color(0xFFFFEE58),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showFertilizerSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Fertilizer",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Willow Fertilizer",
                                  price: "৳250",
                                  imagePath: "assets/images/mainproductone.png",
                                  boxColor: Color(0xCBFFCA28),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showToolsSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Tools",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Pruning Scissor",
                                  price: "৳600",
                                  imagePath: "assets/images/pruningscissor.png",
                                  boxColor: Color(0xFFFF5252),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showSeedsSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Seeds",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Sunflower Seeds",
                                  price: "৳150",
                                  imagePath: "assets/images/seedsone.png",
                                  boxColor: Color(0xFF8D6E63),
                                ),
                                ItemsWidget(
                                  productName: "Rose Seeds",
                                  price: "৳200",
                                  imagePath: "assets/images/roseseed.png",
                                  boxColor: Color(0xFF6D4C41),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showPotsSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Pots",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Brown Pot",
                                  price: "৳750",
                                  imagePath: "assets/images/brownpot.png",
                                  boxColor: Color(0xFFA1887F),
                                ),
                                ItemsWidget(
                                  productName: "Light Brown Pot",
                                  price: "৳800",
                                  imagePath: "assets/images/lightbrownpot.png",
                                  boxColor: Color(0xFFEF9A9A),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showInsecticidesSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Insecticides",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Cool Insecticide",
                                  price: "৳399",
                                  imagePath: "assets/images/insecticide.png",
                                  boxColor: Color(0xFFFF6E40),
                                ),
                                ItemsWidget(
                                  productName: "Spray Insecticide",
                                  price: "৳300",
                                  imagePath: "assets/images/sprayinsecticide.png",
                                  boxColor: Color(0xFFA5D6A7),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showAccessoriesSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Accessories",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Flowering Gloves",
                                  price: "৳750",
                                  imagePath: "assets/images/glovesone.png",
                                  boxColor: Color(0xFF1565C0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showDecorationSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Decoration",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Garden Gnome",
                                  price: "৳500",
                                  imagePath: "assets/images/decorationone.png",
                                  boxColor: Color(0xFF4CAF50),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (showSoilSelling)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: const Text(
                              "Soil",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 540,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: kDefaultPadding,
                              crossAxisSpacing: kDefaultPadding,
                              children: const [
                                ItemsWidget(
                                  productName: "Ready Mix Soil",
                                  price: "৳250",
                                  imagePath: "assets/images/soiil.png",
                                  boxColor: Color(0xCBFFCA28),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  final String productName;
  final String price;
  final String imagePath;
  final Color boxColor;

  const ItemsWidget({
    Key? key,
    required this.productName,
    required this.price,
    required this.imagePath,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            height: 180,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              productName,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            price,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
