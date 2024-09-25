import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageCenterScreen(),
    );
  }
}

class ImageCenterScreen extends StatelessWidget {
  const ImageCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Minimize the height of the column
          children: [
            const Text(
              'SustaiNovate', // Title above the logo
              style: TextStyle(
                fontSize: 60, // Size of the title
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold, // Bold text for emphasis
                color: Color.fromARGB(255, 1, 72, 3), // Text color
              ),
            ),
            const SizedBox(height: 20), // Space between title and logo
            const SizedBox(height: 10), // Space between logo and tagline
            const Text(
              'Green Streak Carbon Sleek', // Tagline after the logo
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 16, 69,
                    1), // Text color for better visibility over image
              ),
            ),
            const SizedBox(height: 70), // Space between tagline and button
            // "Get Started" button
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor:
                    const Color(0xFF58CD77), // Using your theme color code
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 15), // Button padding
              ),
              onPressed: () {
                // Navigate to the login page when button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const LoginPage(), // New page to navigate to
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white, // White text inside the button
                  fontSize: 20, // Button text size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
