import 'package:flutter/material.dart';
import 'MyProfile.dart'; // Import the MyProfile page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFF58CD77), // Updated green color
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          // Add background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color(0xFF58CD77)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10.0,
              ), // Adds some space between AppBar and grid
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2, // 2 items per row
                    crossAxisSpacing: 10.0, // Horizontal spacing between cards
                    mainAxisSpacing: 10.0, // Vertical spacing between cards
                    children: [
                      _buildCard('Log Activities',
                          Icons.checklist), // First card (Tasks)
                      _buildCard(
                          'Dashboard', Icons.dashboard), // Second card (Quiz)
                      _buildCard('GreenActionPlan',
                          Icons.description), // Third card (Past Papers)
                      _buildCard('LeaderBoard',
                          Icons.leaderboard), // Fourth card (PDF)
                      _buildCard(
                          'Challenges', Icons.task), // Fifth card (Job Vacancy)
                      _buildCard('MyProfile', Icons.person,
                          context), // Sixth card (About Us)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build each card container
  Widget _buildCard(String label, IconData icon, [BuildContext? context]) {
    return GestureDetector(
      onTap: () {
        // Check if the card is for MyProfile and navigate accordingly
        if (label == 'MyProfile' && context != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyProfile()),
          );
        }
      },
      child: Card(
        elevation: 20.0,
        shadowColor: Colors.black54, // Adds shadow to make the cards stand out
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Container(
          padding: const EdgeInsets.all(16.0), // Padding inside each card
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.white, Color(0xFFECF5ED)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  size: 48.0,
                  color: const Color(0xFF58CD77)), // Updated icon color
              const SizedBox(height: 8.0),
              Text(
                label,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
