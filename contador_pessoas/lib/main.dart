import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _infoText = "Pode Entrar!";
  void _mudarPessoas(int delta) {
    setState(() {
      _pessoas += delta;
      if (_pessoas < 0) {
        _infoText = "Mundo Invertido?!";
      } else if (_pessoas <= 10) {
        _infoText = "Pode Entrar!";
      } else {
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Pessoas: $_pessoas",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    _mudarPessoas(1);
                  },
                  child: Text(
                    "+1",
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    _mudarPessoas(-1);
                  },
                  child: Text(
                    "-1",
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  )),
            ),
          ],
        ),
        Text(
          _infoText,
          style: TextStyle(
              color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0),
        )
      ],
    );
  }
}
