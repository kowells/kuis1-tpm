import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/ridwan.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Ridwan Darmawan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200090',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
