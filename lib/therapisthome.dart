import 'package:flutter/material.dart';

class TherapistAppHomePage extends StatelessWidget {
  const TherapistAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: const Text(
          'Therapist App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white24,
            ),
            onPressed: () {
              // Handle notifications button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.white24,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome, John!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'How are you feeling today?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildMoodCard(
                      icon: Icons.sentiment_satisfied_alt,
                      title: 'Happy',
                    ),
                    _buildMoodCard(
                      icon: Icons.sentiment_neutral,
                      title: 'Neutral',
                    ),
                    _buildMoodCard(
                      icon: Icons.sentiment_dissatisfied,
                      title: 'Sad',
                    ),
                  ],
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'Featured Therapists',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 300.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildTherapistCard(
                        name: 'Dr. Emma Thompson',
                        specialization: 'Depression, Anxiety',
                        imageUrl: 'assets/images/therapist1.jpg',
                      ),
                      _buildTherapistCard(
                        name: 'Dr. Mark Johnson',
                        specialization: 'Relationships, Stress',
                        imageUrl: 'assets/images/therapist2.jpg',
                      ),
                      _buildTherapistCard(
                        name: 'Dr. Sarah Collins',
                        specialization: 'Trauma, Grief',
                        imageUrl: 'assets/images/therapist3.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMoodCard({required IconData icon, required String title}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTherapistCard(
      {required String name,
      required String specialization,
      required String imageUrl}) {
    return Container(
      width: 200.0,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              specialization,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle therapist card press
              },
              // color: Colors.blue,
              child: const Text(
                'View Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
