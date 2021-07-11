import 'package:flutter/material.dart';
import 'home_page.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
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
          child: ListView(children: [Contadores()])),
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
    return Container(
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
              'Contador:\n$contador',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Container(height: 40.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[900],
                  child: Text("+1"),
                  onPressed: () {
                    setState(() {
                      contador++;
                    });
                    debugPrint('apertei');
                  },
                ),
                Container(width: 2.0),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[900],
                  child: Text("-1"),
                  onPressed: () {
                    if (contador >= 1) {
                      setState(() {
                        contador--;
                      });
                      debugPrint('apertei');
                    } else {
                      contador = contador;
                    }
                  },
                ),
                Container(width: 2.0),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[900],
                  child: Text("0"),
                  onPressed: () {
                    setState(() {
                      contador = 0;
                    });
                    debugPrint('apertei');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
