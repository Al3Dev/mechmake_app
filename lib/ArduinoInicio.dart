import 'package:flutter/material.dart';



import 'Arduino/ArduinoCurso.dart';
import 'Arduino/DefinicionOrigenArduino.dart';
import 'Arduino/FilosofiaDisenoArduino.dart';
import 'Arduino/HistoriaEvolucionArduino.dart';
import 'Arduino/ArquitecturaComponentesArduino.dart';
import 'Arduino/FundamentosProgramacionElectronica.dart';
import 'Arduino/Comunicacion.dart';
import 'Arduino/ExpansionCapacidades.dart';
import 'Arduino/ProyectosPracticos.dart';
import 'Arduino/DesarrolloAvanzadoProyectos.dart';
import 'Arduino/ConsideracionesFinales.dart';


class ArduinoInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cursos de Arduino',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/Arduino.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildSectionHeader('Comienzo', 'Este es el comienzo del tema de Arduino'),
            _buildCourseTile(context, 'Curso de Arduino', ArduinoCurso(), 'Aprende los conceptos básicos y cómo empezar a programar'),
            _buildCourseTile(context, 'Definición y Origen', DefinicionOrigenArduino(), 'Descubre qué es Arduino y su origen'),
            _buildCourseTile(context, 'Filosofía y Diseño', FilosofiaDisenoArduino(), 'Conoce los principios de diseño en proyectos con Arduino'),
            _buildSectionHeader('Temas Importantes', 'Conceptos Avanzados'),
            _buildCourseTile(context, 'Historia y Evolución', HistoriaEvolucionArduino(), 'Explora la evolución de Arduino'),
            _buildCourseTile(context, 'Arquitectura y Componentes', ArquitecturaComponentesArduino(), 'Aprende sobre la arquitectura interna y los componentes clave de Arduino'),
            _buildCourseTile(context, 'Fundamentos de Programación y Electrónica', FundamentosProgramacionElectronica(), 'Domina la programación y electrónica para proyectos avanzados'),
            _buildSectionHeader('Aplicaciones Prácticas', 'Tema 3'),
            _buildCourseTile(context, 'Comunicación en Arduino', Comunicacion(), 'Aprende a comunicar Arduino con otros dispositivos y sensores externos'),
            _buildCourseTile(context, 'Expansión de Capacidades', ExpansionCapacidades(), 'Amplía las capacidades de tu proyecto Arduino con módulos adicionales y periféricos'),
            _buildCourseTile(context, 'Proyectos Prácticos', ProyectosPracticos(), 'Construye proyectos útiles utilizando Arduino'),
            _buildSectionHeader('Desarrollo Avanzado', 'Tema 4'),
            _buildCourseTile(context, 'Desarrollo Avanzado', DesarrolloAvanzadoProyectos(), 'Explora técnicas avanzadas de programación y electrónica'),
            _buildCourseTile(context, 'Consideraciones Finales', ConsideracionesFinales(), 'Aprende sobre las consideraciones finales al diseñar y construir proyectos con Arduino'),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _navigateToCourse(context, ArduinoCurso());
        },
        label: Text('Empezar'),
        icon: Icon(Icons.play_arrow),
        backgroundColor: Color.fromARGB(255, 162, 215, 250),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomNavItem(context, Icons.book, 'Guía', LibroScreen()),
            _buildBottomNavItem(context, Icons.comment, 'Comentatios', ComunidadScreen()),
            // Agregamos el nuevo ícono y su acción correspondiente
            _buildBottomNavItem(context, Icons.code, 'Code', ProgramacionScreen()),
            _buildBottomNavItem(context, Icons.videogame_asset, 'Control', ControlScreen()),
          ],
        ),
      ),
    );
  }

  // Métodos de ayuda
  Widget _buildSectionHeader(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildCourseTile(BuildContext context, String title, Widget destination, String description) {
    return GestureDetector(
      onTap: () {
        _navigateToCourse(context, destination);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(BuildContext context, IconData icon, String title, Widget destination) {
    return GestureDetector(
      onTap: () {
        _navigateToDestination(context, destination);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: Colors.black),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToCourse(BuildContext context, Widget destination) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );
  }

  void _navigateToDestination(BuildContext context, Widget destination) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );
  }
}

// Aquí podrías definir las clases para las pantallas de Libro, Comunidad y Control
class LibroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guía de Estudio: Libro'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionTitle('Introducción'),
            _buildSectionContent('Bienvenido a la guía de estudio del libro.'),
            SizedBox(height: 20),
            _buildSectionTitle('Objetivos'),
            _buildSectionContent('El objetivo de esta guía es proporcionarte una visión general del contenido del libro.'),
            SizedBox(height: 20),
            _buildSectionTitle('Contenido'),
            _buildSectionContent('1. Capítulo 1: Introducción al libro\n2. Capítulo 2: Desarrollo del contenido\n3. Capítulo 3: Conclusiones'),
            SizedBox(height: 20),
            _buildSectionTitle('Recursos Adicionales'),
            _buildSectionContent('Para obtener más información, consulta los recursos adicionales proporcionados por el autor.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}

//mensajes

class ComunidadScreen extends StatefulWidget {
  @override
  _ComunidadScreenState createState() => _ComunidadScreenState();
}

class _ComunidadScreenState extends State<ComunidadScreen> {
  List<Map<String, String>> _comentarios = [
    {'usuario': 'Usuario1', 'comentario': '¡Arduino es increíble! Me encanta poder crear proyectos de electrónica de manera fácil y divertida.'},
    {'usuario': 'Usuario2', 'comentario': 'Estoy aprendiendo Arduino y estoy sorprendido por todas las cosas que puedo hacer con él. ¡Es genial!'},
    {'usuario': 'Usuario3', 'comentario': 'He estado utilizando Arduino durante años y todavía me asombra su versatilidad. ¡No puedo esperar para ver qué más puedo hacer con él!'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comunidad'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comentarios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildComments(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            _mostrarDialogoDejarComentario(context);
          },
          child: Icon(Icons.message),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget _buildComments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _comentarios.map((comment) {
        return _buildComment(comment['usuario']!, comment['comentario']!);
      }).toList(),
    );
  }

  Widget _buildComment(String username, String comment) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            comment,
          ),
        ],
      ),
    );
  }

  void _mostrarDialogoDejarComentario(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String nuevoComentario = '';
        return AlertDialog(
          title: Text('Dejar comentario'),
          content: TextField(
            onChanged: (value) {
              nuevoComentario = value;
            },
            decoration: InputDecoration(
              hintText: 'Escribe tu comentario aquí',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nuevoComentario.isNotEmpty) {
                  setState(() {
                    _comentarios.add({'usuario': 'Nuevo Usuario', 'comentario': nuevoComentario});
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('Enviar'),
            ),
          ],
        );
      },
    );
  }
}

//Control

class ControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de conectar Bluetooth
              },
              child: Text('Conectar Bluetooth'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ControlIconButton(
                  icon: Icons.arrow_back,
                  onPressed: () {
                    // Acción al presionar el botón de izquierda
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ControlIconButton(
                      icon: Icons.arrow_upward,
                      onPressed: () {
                        // Acción al presionar el botón de arriba
                      },
                    ),
                    ControlIconButton(
                      icon: Icons.arrow_downward,
                      onPressed: () {
                        // Acción al presionar el botón de abajo
                      },
                    ),
                  ],
                ),
                ControlIconButton(
                  icon: Icons.arrow_forward,
                  onPressed: () {
                    // Acción al presionar el botón de derecha
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(), // Espacio para alinear los botones A y B a la derecha
                ControlButton(
                  onPressed: () {
                    // Acción al presionar el botón A
                  },
                  label: 'A',
                ),
                ControlButton(
                  onPressed: () {
                    // Acción al presionar el botón B
                  },
                  label: 'B',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ControlIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ControlIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
      iconSize: 48, // Ajusta el tamaño del icono según sea necesario
    );
  }
}

class ControlButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ControlButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(100, 48)), // Tamaño mínimo del botón
      ),
    );
  }
} 

class ProgramacionScreen extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programación'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: 700,
              color: Colors.black,
              child: Padding(
              
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  initialValue: '''
                  void setup() {
                    // put your setup code here, to run once:
                  }

                  void loop() {
                    // put your main code here, to run repeatedly:
                  }
                  ''',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto Mono',
                    fontSize: 15,
                  ),
                  cursorColor: Colors.blueAccent,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Editor de código',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow, color: Colors.white),
              onPressed: () {
                // Acción al presionar el botón de ejecutar
              },
            ),
            IconButton(
              icon: Icon(Icons.save, color: Colors.white),
              onPressed: () {
                // Acción al presionar el botón de guardar
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Acción al presionar el botón de configuración
              },
            ),
          ],
        ),
      ),
    );
  }
}