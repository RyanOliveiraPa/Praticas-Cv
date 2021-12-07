import 'package:flutter/material.dart';
class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para Segunda Rota'),
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SegundaRota()))
                    .then(
                  (resposta) {
                    setState(
                      () {
                        mensagem = resposta;
                      },
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Mensagem {
  String titulo;
  String texto;
  Mensagem(this.titulo, this.texto);
}

class SegundaRota extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String resp = '';
  
  resultadoSoma() {
    double numero1 = double.parse(this.num1Controller.text);
    double numero2 = double.parse(this.num2Controller.text);
    double soma = numero1 + numero2;
    this.resp = '$numero1 + $numero2 = $soma';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num1Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num2Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, resultadoSoma());
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
        ],
      ),
    );
  }
}
