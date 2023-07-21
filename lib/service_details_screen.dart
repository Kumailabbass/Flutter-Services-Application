import 'package:flutter/material.dart';
import 'dart:math';

class ServiceDetailsScreen extends StatelessWidget {
  final String serviceName;

  const ServiceDetailsScreen({required this.serviceName});

  @override
  Widget build(BuildContext context) {
    final location = _generateRandomLocation();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 26),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: TextEditingController(text: location),
                      decoration: InputDecoration(
                        labelText: 'Location',
                        prefixIcon: Icon(Icons.location_on),
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Service Name: $serviceName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price: 45 SAR',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  _generateRandomArticle(),
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Providers Nearby',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildProviderCard('John Doe', '5 Stars', '2 km'),
          _buildProviderCard('Jane Smith', '5 Stars', '3 km'),
          _buildProviderCard('Mike Johnson', '4.5 Stars', '1 km'),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Handle booking logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Select and Book',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderCard(String name, String rating, String distance) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(name),
        subtitle: Text('Rating: $rating | Distance: $distance'),
      ),
    );
  }

  String _generateRandomLocation() {
    final locations = [
      'Location A',
      'Location B',
      'Location C',
      'Location D',
      'Location E',
    ];
    final random = Random();
    return locations[random.nextInt(locations.length)];
  }

  String _generateRandomArticle() {
    final articles = [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
      'Maecenas sit amet consectetur lorem. Etiam aliquet, justo ac efficitur dignissim, metus felis gravida lacus.',
      'Sed interdum rutrum lacinia. Duis interdum elementum felis, non pellentesque dui efficitur at.',
      'Nullam bibendum lobortis nisl, ac vestibulum ex sagittis vel.',
    ];
    final random = Random();
    return articles[random.nextInt(articles.length)];
  }
}
