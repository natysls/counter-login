// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Container(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            onChanged: (text) {
                              senha = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.amber,
                              ),
                              onPressed: () {
                                if (email == 'natalia@uece.br' &&
                                    senha == '123456') {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  print('login inválido');
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.1),
        ),
        _body(),
      ]),
    );
  }
}
