import 'package:flutter/material.dart';
import 'rojo_page.dart';

class VerdePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Verde'),
      ),
      body: Container(
        color: Colors.green, // Cambio de color de fondo a verde
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Verde',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RojoPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16), // Aumento del tamaño del botón
                ),
                child: Text('Ir a la pantalla Roja'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
