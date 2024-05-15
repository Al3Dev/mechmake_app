import 'package:flutter/material.dart';

class ArduinoIDE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arduino IDE'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Escribe tu código aquí...',
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de compilar
                },
                child: Text('Compilar'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de cargar
                },
                child: Text('Cargar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}