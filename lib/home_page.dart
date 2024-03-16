import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/button.dart';
import 'package:flutter_registration_and_listview/text_field.dart';
import 'package:flutter_registration_and_listview/login_page.dart';
import 'package:flutter_registration_and_listview/registration_page.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  width: 300,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Логин:'
                    ),
                    maxLength: 30,
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: 300,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ExampleTextField(HintText: 'Пароль:', MAXLength: 10)
                )
            ),
            Expanded(
                child: Container(

            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 150),
              child: ElevatedButton(
                  child: ExampleButton(text: 'Войти'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login())
                    );
                  }
              ),
            )
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  child: ExampleButton(text: 'Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                    );
                  }
            )
            )
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Приложение для авторизации'),),
    );
  }
}