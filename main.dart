import 'package:flutter/material.dart';

void main() {
  runApp(ParkNowApp());
}

class ParkNowApp extends StatelessWidget {
  const ParkNowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParkNowScreen(),
    );
  }
}

class ParkNowScreen extends StatelessWidget {
  const ParkNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70, // Ensure the background color is white
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'PARK NOW',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Directly use Image.asset without the surrounding container
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Optional: for rounded corners
              child: Image.asset(
                'assets/images/car.png', // Make sure this image has transparency
                height: 200,
                width: 300, // Adjust as per your design
                fit: BoxFit.cover, // Ensures the image fits within the box
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12, // Set button color to orange to contrast
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // Add sign-up logic here
              },
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.yellowAccent, fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'you already have an account? ',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    // Add your login logic here
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
