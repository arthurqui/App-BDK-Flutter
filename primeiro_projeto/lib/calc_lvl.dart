import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:convert';

import 'links.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  String imgfundo = "images/fundo.png";
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgfundo),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Titulo(),
            CalculadoraLvl(),
            Contadores(),
          ],
        ),
      ),
      drawer: DrawerApp(),
      appBar: AppBar(
          title: Text("Brasil Drop Keys"),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Switch(
                    value: state,
                    onChanged: (bool s) {
                      setState(() {
                        state = s;
                        print(state);
                        state
                            ? imgfundo = "images/fundo.png"
                            : imgfundo = "images/fundo2.png";
                      });
                    },
                  ),
                ],
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[900],
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
          debugPrint('apertou');
        },
      ),
    );
  }
}

class CalculadoraLvl extends StatefulWidget {
  @override
  _CalculadoraLvlState createState() => _CalculadoraLvlState();
}

class _CalculadoraLvlState extends State<CalculadoraLvl> {
  TextEditingController calController = TextEditingController();
  String _resultado = "Nº de jogos não\ninformado";

  void _calculaLevel() {
    setState(() {
      int vJogos = int.parse(calController.text);
      int qtdJogos = vJogos;

      if (qtdJogos < 1) {
        _resultado = "Valor errado!";
      } else {
        if (qtdJogos == 1) {
          _resultado =
              "Você tem $qtdJogos Jogo\n\nEle te deu a insignia de\n 100 EXP de level na Steam";
        } else {
          if (qtdJogos <= 4) {
            _resultado =
                "Você tem $qtdJogos Jogos\n\nCada jogo te dá 6 EXP\nde level na Steam";
          } else {
            if (qtdJogos <= 9) {
              _resultado =
                  "Você tem $qtdJogos Jogos\n\nCada jogo te dá 5 EXP\nde level na Steam";
            } else {
              if (qtdJogos <= 24) {
                _resultado =
                    "Você tem $qtdJogos Jogos\n\nCada jogo te dá 3,31 EXP\nde level na Steam";
              } else {
                if (qtdJogos <= 49) {
                  _resultado =
                      "Você tem $qtdJogos Jogos\n\nCada jogo te dá 2 EXP\nde level na Steam";
                } else {
                  if (qtdJogos <= 99) {
                    _resultado =
                        "Você tem $qtdJogos Jogos\n\nCada jogo te dá 1,49 EXP\nde level na Steam";
                  } else {
                    if (qtdJogos <= 249) {
                      _resultado =
                          "Você tem $qtdJogos Jogos\n\nCada jogo te dá 1,16 EXP\nde level na Steam";
                    } else {
                      _resultado =
                          "Você tem $qtdJogos Jogos\n\nCada jogo te dá 1 EXP\nde level na Steam";
                    }
                  }
                }
              }
            }
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  Container(height: 50.0),
                  Text(
                    'Digite abaixo o número de jogos:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(height: 30.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      controller: calController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Jogos na conta Steam"),
                    ),
                  ),
                  Container(height: 30.0),
                  RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey[900],
                      child: Text("Calcular"),
                      onPressed: () {
                        _calculaLevel();
                      }),
                  Container(height: 15.0),
                ],
              ),
            )),
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
                  Container(height: 100.0),
                  Text(
                    _resultado,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class Titulo extends StatefulWidget {
  @override
  _TituloState createState() => _TituloState();
}

class _TituloState extends State<Titulo> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Container(height: 50.0),
              Text(
                'Quanto cada jogo te da de\nexperiência na Steam?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Container(height: 15.0),
              Text(
                'A insignia de contador de jogos também dá EXP\npara aumentar o seu nível da Steam, e esse valor\nde EXP por jogo muda conforme a quantidade de\njogos que você tem na conta aumenta.\n\nUse a calculadora abaixo para saber quanto cada\njogo vai te dar de EXP!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}

class Contadores extends StatefulWidget {
  @override
  State<Contadores> createState() {
    return ContadoresState();
  }
}

class ContadoresState extends State<Contadores> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //inicio do contador
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
                  'Para entender o sistema de level da\nInsignia de colecionador, veja o\nvídeo abaixo:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Container(height: 15.0),
                GestureDetector(
                  onTap: () {
                    calcvid();

                    debugPrint('apertei');
                  },
                  child: Image.asset(
                    "images/thumbvideo.png",
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
