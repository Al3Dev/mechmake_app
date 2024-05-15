import 'package:flutter/material.dart';

class ExpansionCapacidades extends StatefulWidget {
  @override
  _ExpansionCapacidadesState createState() => _ExpansionCapacidadesState();
}

class _ExpansionCapacidadesState extends State<ExpansionCapacidades> {
  int _currentPage = 1;
  int _totalPages = 3; // Cantidad total de páginas del curso
  bool _completed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curso de Arduino'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Página $_currentPage de $_totalPages',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: _currentPage / _totalPages,
              backgroundColor: Colors.grey[300],
              minHeight: 10,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: _currentPage == 1
                      ? _buildPage1()
                      : _currentPage == 2
                          ? _buildPage2()
                          : _buildPage3(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _currentPage > 1
                      ? () {
                          setState(() {
                            _currentPage--;
                            _completed = false; // Ajustar completado a false al retroceder
                          });
                        }
                      : null,
                  child: Text('Anterior'),
                ),
                ElevatedButton(
                  onPressed: _currentPage < _totalPages && !_completed
                      ? () {
                          setState(() {
                            _currentPage++;
                            if (_currentPage == _totalPages) {
                              _completed = true;
                            }
                          });
                        }
                      : _completed // Cambiar el texto del botón según el estado de completado
                          ? () {
                              setState(() {
                                _completed = true;
                                Navigator.pop(context); // Regresar a la página anterior
                              });
                            }
                          : null,
                  child: Text(_completed ? 'Terminar' : 'Siguiente'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '¡Bienvenido al Curso de Arduino!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan luctus turpis, sit amet sollicitudin libero volutpat ut. Donec quis urna vel metus vehicula ultricies nec nec ipsum. Integer vitae dictum orci.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPage2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Fundamentos de programación',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan luctus turpis, sit amet sollicitudin libero volutpat ut. Donec quis urna vel metus vehicula ultricies nec nec ipsum. Integer vitae dictum orci.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPage3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Proyectos prácticos',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan luctus turpis, sit amet sollicitudin libero volutpat ut. Donec quis urna vel metus vehicula ultricies nec nec ipsum. Integer vitae dictum orci.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
