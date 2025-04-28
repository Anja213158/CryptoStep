import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Walked 3,000 steps'),
            subtitle: Text('Reward: 0.0001 BTC'),
          ),
          ListTile(
            title: Text('Walked 5,000 steps'),
            subtitle: Text('Reward: 0.0002 BTC'),
          ),
          ListTile(
            title: Text('Walked 2,250 steps'),
            subtitle: Text('Reward: 0.0001 BTC'),
          ),
        ],
      ),
    );
  }
}
