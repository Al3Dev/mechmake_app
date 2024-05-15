import 'package:flutter/material.dart';

class ConfiguracionScreen extends StatefulWidget {
  @override
  _ConfiguracionScreenState createState() => _ConfiguracionScreenState();
}

class _ConfiguracionScreenState extends State<ConfiguracionScreen> {
  bool _opcion1 = false;
  bool _opcion2 = false;
  bool _opcion3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configuración',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Opciones de configuración',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            _buildSwitchListTile('Opción 1', _opcion1, (bool value) {
              setState(() {
                _opcion1 = value;
              });
            }),
            _buildSwitchListTile('Opción 2', _opcion2, (bool value) {
              setState(() {
                _opcion2 = value;
              });
            }),
            _buildSwitchListTile('Opción 3', _opcion3, (bool value) {
              setState(() {
                _opcion3 = value;
              });
            }),
            SizedBox(height: 40.0),
            Text(
              'Acciones',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            _buildButton('Guardar', _guardarConfiguracion),
            SizedBox(height: 10.0),
            _buildButton('Cambiar Contraseña', _cambiarContrasena),
            SizedBox(height: 10.0),
            _buildButton('Otras Acciones', _otrasAcciones),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchListTile(
      String title, bool value, ValueChanged<bool> onChanged) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, Function onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0),
        ),
        style: ElevatedButton.styleFrom(
        
          padding: EdgeInsets.symmetric(vertical: 14.0),
        ),
      ),
    );
  }

  void _guardarConfiguracion() {
    // Implementar lógica para guardar configuración
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Configuración guardada.'),
    ));
  }

  void _cambiarContrasena() {
    // Implementar lógica para cambiar contraseña
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Cambiando contraseña...'),
    ));
  }

  void _otrasAcciones() {
    // Implementar otras acciones según sea necesario
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Realizando otras acciones...'),
    ));
  }
}
