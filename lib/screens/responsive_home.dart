import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isTablet = screenWidth > 600;
    bool isLandscape = screenWidth > screenHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Home"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              // HEADER SECTION
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(isTablet ? 24 : 16),
                color: Colors.blue.shade100,
                child: Text(
                  "Welcome to Responsive UI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isTablet ? 28 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // MAIN CONTENT
              Expanded(
                child: isTablet
                    ? _buildTabletLayout()
                    : _buildPhoneLayout(isLandscape),
              ),

              // FOOTER SECTION
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(isTablet ? 20 : 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: isTablet ? 18 : 14,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildPhoneLayout(bool isLandscape) {
    if (isLandscape) {
      return Row(
        children: [
          Expanded(child: _buildCard("Item 1")),
          Expanded(child: _buildCard("Item 2")),
        ],
      );
    } else {
      return ListView(
        children: [
          _buildCard("Item 1"),
          _buildCard("Item 2"),
          _buildCard("Item 3"),
        ],
      );
    }
  }

  Widget _buildTabletLayout() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      children: [
        _buildCard("Item 1"),
        _buildCard("Item 2"),
        _buildCard("Item 3"),
        _buildCard("Item 4"),
      ],
    );
  }

  Widget _buildCard(String title) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Center(
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
