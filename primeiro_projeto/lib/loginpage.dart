import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_projeto/app_database.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final Database bdk;

  LoginPage({Key key, this.bdk}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var aut;
  TextEditingController cSenha = TextEditingController();
  TextEditingController cUsuario = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.bdk.readList().then((value) {
      aut = value;
    });
  }

  void excluirusuario(String usuario) {}

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
                  controller: cUsuario,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Usuário"),
                ),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  controller: cSenha,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Senha"),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                        textColor: Colors.white,
                        color: Colors.grey[900],
                        child: Text("Login"),
                        onPressed: () {
                          var ind = aut["usuario"].indexOf(cUsuario.text);

                          if (ind != -1) {
                            if (aut["senha"][ind] == cSenha.text) {
                              Navigator.of(context).pushNamed('/home');
                            }
                          }
                        }),
                    Container(width: 10.0),
                    RaisedButton(
                        textColor: Colors.white,
                        color: Colors.grey[900],
                        child: Text("Sign"),
                        onPressed: () {
                          if (aut.isEmpty) {
                            aut = {
                              "usuario": [cUsuario.text],
                              "senha": [cSenha.text]
                            };
                          } else {
                            aut["usuario"].add(cUsuario.text);
                            aut["senha"].add(cSenha.text);
                          }
                          widget.bdk.writeList(aut);
                        }),
                    Container(width: 10.0),
                    RaisedButton(
                        textColor: Colors.white,
                        color: Colors.grey[900],
                        child: Text("Excluir"),
                        onPressed: () {
                          var indice = aut["usuario"].indexOf(cUsuario.text);
                          if (indice != -1) {
                            print("text1");
                            if (aut["senha"][indice] == cSenha.text) {
                              print("text2");
                              aut["usuario"].removeAt(indice);
                              aut["senha"].removeAt(indice);
                            }
                          }
                          widget.bdk.writeList(aut);
                        }),
                  ],
                ),
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
