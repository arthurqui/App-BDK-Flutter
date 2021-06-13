import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      //widget que bloquia rotação de tela
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset("images/logonome.png"),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  onChanged: (text) {
                    usuario = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Usuário"),
                ),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Senha"),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    textColor: Colors.white,
                    color: Colors.grey[900],
                    child: Text("Login"),
                    onPressed: () {
                      if (usuario == 'usuario' && senha == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                        print('correto');
                      } else {
                        print('login errado');
                      }
                    }),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wb_sunny,
                      ),
                      CustomSwitch(),
                      Icon(
                        Icons.bedtime,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
