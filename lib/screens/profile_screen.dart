import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _goalController = TextEditingController();
  bool _notificationsEnabled = false;
  String _dailyStepGoal = "8,000"; // Default goal

  // Simulate linking to Google Fit or Apple Health
  void _linkHealth() {
    // Logic for linking to Google Fit or Apple Health will go here.
    // You would use a plugin like `google_fit` or `health` in a real app.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Linked to Google Fit / Apple Health!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile picture and name
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://www.example.com/your-profile-picture'),
            ),
            SizedBox(height: 20),
            Text(
              'User',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Bio: Crypto enthusiast who loves to walk!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),

            // Daily goal section
            Text(
              'Daily Step Goal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _goalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter your goal (steps)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _dailyStepGoal = value.isEmpty ? '8,000' : value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Your current goal: $_dailyStepGoal steps',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),

            // Notifications toggle
            SwitchListTile(
              title: Text('Enable Notifications'),
              subtitle: Text('Get notified when you reach your goal!'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            SizedBox(height: 40),

            // Google Fit / Apple Health integration
            ElevatedButton(
              onPressed: _linkHealth,
              child: Text('Link with Google Fit / Apple Health'),
            ),
            SizedBox(height: 40),

            // Edit profile button
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
