import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  final bool isPremium = false; // Смени на true ако е премиум корисник

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.blue[50], // Општа позадина
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Wallet Icon
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                Icons.account_balance_wallet,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),

            // Бела картичка за текстовите
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'StepCoins Earned:\n0.504',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Tokens Available to Withdraw:\n0.100',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Withdraw Tokens Button
            ElevatedButton(
              onPressed: isPremium ? () {} : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isPremium ? Colors.green : Colors.grey,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Withdraw Tokens',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Donate Tokens Button
            ElevatedButton(
              onPressed: () {
                // логика за донација
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Donate Tokens',
                style: TextStyle(
                  fontSize: 18,
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
