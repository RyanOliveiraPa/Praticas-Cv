import 'package:flutter/material.dart';
 
void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );
 
// O objeto da classe mensagem será enviado para a segunda rota.
class Preco {
  double etanol ;
  double gasolina;
  Preco(this.etanol, this.gasolina);
}
 
 
class PrimeiraRota extends StatelessWidget {
  final TextEditingController etanolController = TextEditingController();
  final TextEditingController gasolinaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: etanolController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => etanolController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o valor do etanol',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: gasolinaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => gasolinaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o valor da gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Preco mensagem = Preco(
                double.parse(etanolController.text),
                double.parse(gasolinaController.text)
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SegundaRota(mensagem)));
            },
            child: Text('Ir para a Segunda Rota'),
          ),
        ],
      ),
    );
  }
}
 
class SegundaRota extends StatelessWidget {
  final Preco mensagem;
  SegundaRota(this.mensagem);
  double result =0;
 
  @override
  Widget build(BuildContext context) {
    double resultado = mensagem.etanol/mensagem.gasolina;
    String result= "";
    if(resultado < 0.7){
      result = "Etanol é a melhor opção";
    }
    else{
      result = 'Gasolina é a melhor opção';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Valor do etanol ${mensagem.etanol.toStringAsFixed(2)}',
 
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Valor da gasolina ${mensagem.gasolina.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
             Text(
               '${mensagem.etanol.toStringAsFixed(2)} / ${mensagem.gasolina.toStringAsFixed(2)} = ${resultado.toStringAsFixed(2)} \n ${result}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
 
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
 