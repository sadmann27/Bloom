class City{
  bool isSelected;
  final String city;

  final bool isDefault;

  City({required this.isSelected, required this.city, required this.isDefault});

  //List of Cities data
  static List<City> citiesList = [
    City(
        isSelected: false,
        city: 'Dhaka',
        isDefault: true),
    City(
        isSelected: false,
        city: 'Barishal',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Chittagong',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Khulna',

        isDefault: false),
    City(
        isSelected: false,
        city: 'Mymensingh',

        isDefault: false),
    City(
        isSelected: false,
        city: 'Rajshahi',

        isDefault: false),
    City(
        isSelected: false,
        city: 'Sylhet',

        isDefault: false),
    City(
        isSelected: false,
        city: 'Rangpur',

        isDefault: false),

  ];

  //Get the selected cities
  static List<City> getSelectedCities(){
    List<City> selectedCities = City.citiesList;
    return selectedCities
        .where((city) => city.isSelected == true)
        .toList();
  }
}





















