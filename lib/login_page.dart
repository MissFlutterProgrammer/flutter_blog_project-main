import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/password_recovery.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سینگنال ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    minimumSize: Size(200, 40),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      BlogScreen(),
                    );
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(200, 43),
                  ),
                  child: Text('ثبت نام'),
                ),
                TextButton(
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      PasswordRecovery(),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  child: Text(
                    'فراموشی رمز عبور',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
