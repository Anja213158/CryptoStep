import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent, // Background color for app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text for the earned reward
              Text(
                'You have earned 0.0004 BTC!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Marathoner Badge Card
              RewardCard(
                title: 'Marathoner Badge',
                description: '50,000 steps',
                isUnlocked: true,
                badgeIcon: Icons.directions_run,
              ),
              SizedBox(height: 20),

              // Speedster Badge Card
              RewardCard(
                title: 'Speedster Badge',
                description: '10 days above 10,000 steps',
                isUnlocked: false,
                badgeIcon: Icons.flash_on,
              ),
              SizedBox(height: 20),

              // Avatar & Wallpaper purchase section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 6)],
                ),
                child: Column(
                  children: [
                    Text(
                      'Buy Avatars and Wallpapers with StepCoins',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PurchaseItem(
                          itemName: 'Avatar',
                          itemPrice: '50 StepCoins',
                          icon: Icons.account_circle,
                        ),
                        PurchaseItem(
                          itemName: 'Wallpaper',
                          itemPrice: '30 StepCoins',
                          icon: Icons.image,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isUnlocked;
  final IconData badgeIcon;

  const RewardCard({
    required this.title,
    required this.description,
    required this.isUnlocked,
    required this.badgeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isUnlocked
            ? BorderSide(color: Colors.green, width: 2)
            : BorderSide(color: Colors.grey, width: 2),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(badgeIcon, size: 50, color: isUnlocked ? Colors.green : Colors.grey),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

class PurchaseItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final IconData icon;

  const PurchaseItem({
    required this.itemName,
    required this.itemPrice,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        SizedBox(height: 10),
        Text(itemName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text(itemPrice, style: TextStyle(fontSize: 16, color: Colors.black54)),
      ],
    );
  }
}
