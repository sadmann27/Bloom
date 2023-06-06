import 'package:bloom/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String location = 'Dhaka';
  String weatherStateName = 'Clear';
  late int temperature;
  late int windSpeed;
  late int humidity;
  late int maxTemp;

  @override
  void initState() {
    super.initState();
    generateRandomTemperature();
    generateRandomWeatherInfo();
  }

  void generateRandomTemperature() {
    final random = Random();
    temperature = random.nextInt(11) + 28;
  }

  void generateRandomWeatherInfo() {
    final random = Random();
    windSpeed = random.nextInt(20) + 1;
    humidity = random.nextInt(101);
    maxTemp = random.nextInt(11) + 28;
  }

  void generateRandomDataInfo() {
    final random = Random();
    windSpeed = random.nextInt(4) + 2;
    humidity = random.nextInt(31) + 50;
    maxTemp = random.nextInt(3) + 38;
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, d MMMM').format(now);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 200),
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/pin.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: location,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: [
                            DropdownMenuItem(
                              value: 'Dhaka',
                              child: Text('Dhaka'),
                            ),
                            DropdownMenuItem(
                              value: 'Chittagong',
                              child: Text('Chittagong'),
                            ),
                            DropdownMenuItem(
                              value: 'Sylhet',
                              child: Text('Sylhet'),
                            ),
                          ],
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                location = newValue;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                location,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                formattedDate,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 60),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: kWeatherPrimaryColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: kWeatherSecondaryColor.withOpacity(0.5),
                          offset: const Offset(0, 25),
                          blurRadius: 10,
                          spreadRadius: -12,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -50,
                    left: 10,
                    child: Image.asset(
                      'assets/icons/clearsky.png',
                      width: 150,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Text(
                      weatherStateName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            temperature.toString(),
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'o',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    weatherItem(
                      text: 'Wind Speed',
                      value: windSpeed.toString(),
                      unit: 'km/h',
                      imageUrl: 'assets/icons/windspeed.png',
                    ),
                    weatherItem(
                      text: 'Humidity',
                      value: humidity.toString(),
                      unit: '',
                      imageUrl: 'assets/icons/humidity.png',
                    ),
                    weatherItem(
                      text: 'Max Temp',
                      value: maxTemp.toString(),
                      unit: '°C',
                      imageUrl: 'assets/icons/max-temp.png',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30), // Increased spacing here

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0), // Adjust the value as needed
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0), // Adjust the value as needed
                    child: Text(
                      'Next 7 Days',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: kWeatherPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget weatherItem({
    required String text,
    required String value,
    required String unit,
    required String imageUrl,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFE1F5FE),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            imageUrl,
            width: 30,
            height: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '$value $unit',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
