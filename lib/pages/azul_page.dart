import 'package:flutter/material.dart';
import 'verde_page.dart';

class AzulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Azul'),
      ),
      body: Container(
        color: Colors.blue, // Cambio de color de fondo a azul
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Azul',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerdePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16), // Mismo tamaño de botón que el anterior
                ),
                child: Text('Ir a la pantalla Verde'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
