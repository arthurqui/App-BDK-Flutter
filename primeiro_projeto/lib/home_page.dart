import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_controler.dart';
import 'links.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double alt = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //

      appBar: AppBar(
          title: Text("Brasil Drop Keys"),
          centerTitle: true,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: Icon(
                    Icons.logout,
                    size: 26.0,
                  ),
                )),
          ]),

      //

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/fundopreto.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 400.0,
                height: 300.0,
                child: Center(
                  child: Column(
                    children: [
                      Container(height: 60.0),
                      Text(
                        'Banner 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      Container(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: [
                          RaisedButton(
                            textColor: Colors.white,
                            color: Colors.grey[900],
                            child: Text("ir"),
                            onPressed: () {
                              setState(() {});
                              debugPrint('apertei');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //inicio da fila de botões
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //
                  Column(
                    //botão com nome
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/contador');

                          debugPrint('apertei');
                        },
                        child: Image.asset("images/contador.png"),
                      ),
                      Text(
                        'Contador',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ), //fim do botão com nome
                  //
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          recuperarlink();

                          debugPrint('apertei');
                        },
                        child: Image.asset("images/recuperarconta.png"),
                      ),
                      Text(
                        'Recuperar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          precoinvsteam();

                          debugPrint('apertei');
                        },
                        child: Image.asset("images/botaoinventario.png"),
                      ),
                      Text(
                        'Inventário',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //
                  Column(
                    //botão com nome
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ), //fim do botão com nome
                  //
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //
                  Column(
                    //botão com nome
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ), //fim do botão com nome
                  //
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('apertei');
                        },
                        child: Image.asset("images/placeholder.png"),
                      ),
                      Text(
                        '??????',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            height: 0.20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                    ],
                  ),
                ],
              ), //fim da linha de botões
            ]),
          ],
        ),
      ),
      //

      drawer: DrawerApp(),
      //

//
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.darkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  double alt = 20.0;
  int egg1 = 0;
  String image1 = "images/loogo.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Eegg1(),
          ),
          ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Youtube"),
              subtitle: Text("Veja os vídeos do BDK"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                youtubelink();
              }),
          ListTile(
              leading: Icon(Icons.sports_esports),
              title: Text("Steam"),
              subtitle: Text("Veja o grupo do BDK"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                steamlink();
              }),
          ListTile(
              leading: Icon(Icons.photo),
              title: Text("Instagram"),
              subtitle: Text("Instagram do BDK"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                instalink();
              }),
          ListTile(
              leading: Icon(Icons.message),
              title: Text("Discord"),
              subtitle: Text("Entre no Discord do BDK"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                discordlink();
              }),
          Container(height: alt),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bedtime),
                CustomSwitch(),
                Icon(
                  Icons.wb_sunny,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Eegg1 extends StatefulWidget {
  @override
  _Eegg1State createState() => _Eegg1State();
}

class _Eegg1State extends State<Eegg1> {
  int egg1 = 0;
  String image1 = "images/loogo.png";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          egg1++;
          if (egg1 == 20) {
            print(egg1);
            image1 = "images/loogo2.png";
            debugPrint('egg1 = 12');
          } else {
            print(egg1);
            image1 = "images/loogo.png";
          }

          if (egg1 > 20) {
            print(egg1);
            egg1 = 0;
          }
        });
        debugPrint('apertei');
      },
      child: Image.asset(image1),
    );
  }
}
