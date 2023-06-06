import 'package:flutter/material.dart';
import 'azul_page.dart';

class RojoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Roja'),
      ),
      body: Container(
        color: Colors.red, // Cambio de color de fondo a rojo
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Roja',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AzulPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16), // Mismo tamaño de botón que el anterior
                ),
                child: Text('Ir a la pantalla Azul'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
