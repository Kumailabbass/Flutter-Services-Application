import 'package:flutter/material.dart';
import 'package:flutter_application_1/service_details_screen.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(26),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Electrician Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                _buildServiceItem(context, 'AC Service and Repair',
                    Icons.ac_unit, 'Minimum 45 SAR'),
                _buildServiceItem(context, 'Refrigerator Repair', Icons.kitchen,
                    'Minimum 45 SAR'),
                _buildServiceItem(context, 'Washing Machine Repair', Icons.wash,
                    'Minimum 45 SAR'),
                _buildServiceItem(
                    context, 'Fan Repair', Icons.air, 'Minimum 45 SAR'),
                _buildServiceItem(context, 'Microwave Repair', Icons.microwave,
                    'Minimum 45 SAR'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(BuildContext context, String serviceName,
      IconData iconData, String priceInfo) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ServiceDetailsScreen(serviceName: serviceName),
          ),
        );
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(iconData, size: 48),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      serviceName,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(height: 10),
              Text(
                priceInfo,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
