import 'package:flutter/material.dart';
import 'package:healthtrack1/profile_page.dart';
import 'package:healthtrack1/reminders_page.dart';

import 'activity_page.dart';
import 'controller.dart';
import 'nutrition_page.dart'; // Импорт контроллера

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController(); // Создаем экземпляр HomeController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мой журнал здоровья'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage(controller.profiles[0])),
                );
              },
              child: Text('Профиль'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityPage()),
                );
              },
              child: Text('Физическая активность'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NutritionPage()),
                );
              },
              child: Text('Питание'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemindersPage()),
                );
              },
              child: Text('Напоминания и цели'),
            ),
          ],
        ),
      ),
    );
  }
}
