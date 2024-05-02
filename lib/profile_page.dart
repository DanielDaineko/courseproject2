import 'package:flutter/material.dart';
import 'home_page.dart';
import 'user_profile.dart'; // Импорт класса UserProfile

class ProfilePage extends StatelessWidget {
  final UserProfile profile;

  ProfilePage(this.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.indigo],
          ),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildProfileItem('Имя: ${profile.name}'),
            _buildProfileItem('Возраст: ${profile.age} лет'),
            _buildProfileItem('Рост: ${profile.height} см'),
            _buildProfileItem('Вес: ${profile.weight} кг'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }
}
