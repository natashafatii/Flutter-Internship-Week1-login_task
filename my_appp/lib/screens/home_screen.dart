import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual layout structure
    return Scaffold(
      // The body of the screen, wrapped in a container for styling
      body: Container(
        // Set a gentle, modern gradient for the background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE8EAF6), // Light blue-grey
              Color(0xFFC5CAE9), // Slightly darker blue-grey
            ],
          ),
        ),
        // Use a SafeArea to ensure content isn't obstructed by device features
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Flexible space to push content to the bottom
                const Spacer(),

                // Centered content
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // An icon to add a visual element
                      const Icon(
                        Icons.check_circle_outline,
                        size: 100,
                        color: Color(0xFF3F51B5), // Indigo
                      ),
                      const SizedBox(height: 24),
                      // Main title text
                      const Text(
                        "Welcome to Home Screen 🎉",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A237E), // Dark indigo
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Subtitle text
                      const Text(
                        "You have successfully logged in!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF5C6BC0), // Medium indigo
                        ),
                      ),
                    ],
                  ),
                ),

                // Another flexible space to push content from the top
                const Spacer(),

                // A button to log out, with a modern, rounded design
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Placeholder for logout functionality
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text("Logged out successfully!"),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                      );
                      // In a real app, you would navigate back to the login screen
                      // Navigator.of(context).pushReplacementNamed('/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F51B5), // Indigo
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      "Log Out",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
