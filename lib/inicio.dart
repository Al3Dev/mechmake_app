import 'package:flutter/material.dart';
import 'ArduinoInicio.dart';
import 'ConfiguracionScreen.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.light, // Modo claro predeterminado
      ),
      darkTheme: ThemeData.dark(), // Tema oscuro
      home: InicioScreen(),
    );
  }
}

class InicioScreen extends StatefulWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int _selectedIndex = 0;
  List<String> _categorias = ['Inicio', 'Comunidad', 'Cuenta'];
  List<IconData> _iconos = [Icons.home, Icons.people, Icons.account_circle];

  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 100),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Elimina el botón de regresar
        title: Row(
          children: [
            Icon(_iconos[_selectedIndex]),
            SizedBox(width: 8),
            Text('${_categorias[_selectedIndex]}'),
          ],
        ),






actions: [
  IconButton(
    onPressed: () {
      // Acción para el botón Premium
    },
    icon: Icon(Icons.store), // Icono de la tienda
  ),
  IconButton(
    onPressed: () {
      // Acción para el botón Premium
    },
    icon: Icon(Icons.star),
  ),
],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          _buildInicioContent(),
          _buildComunidadContent(),
          _buildCuentaContent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'comunidad',
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Cuenta',
          ),
        ],
      ),
    );
  }

Widget _buildInicioContent() {
  return Stack(
    children: [
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSquare(
              image: 'assets/Arduino.png',
              title: 'Arduino',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArduinoInicio()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildSquare(
              image: 'assets/Esp32i.png',
              title: 'Esp32',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuevaPantalla()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildSquare(
              image: 'assets/C++.png',
              title: 'C++',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuevaPantalla()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildSquare(
              image: 'assets/panel.png',
              title: 'Panel Solar',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuevaPantalla()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildSquare(
              image: 'assets/grua.png',
              title: 'Grua',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuevaPantalla()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildSquare(
              image: 'assets/carro.png',
              title: 'Carro',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuevaPantalla()),
                );
              },
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          onPressed: () {
            // Acción para el botón de chat
          },
          child: Icon(Icons.chat),
          backgroundColor: Colors.blue,
        ),
      ),
    ],
  );
}

Widget _buildSquare({required String image, required String title, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 8), // Cambia la posición de la sombra horizontal y verticalmente
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromARGB(0, 255, 255, 255), Colors.black.withOpacity(0.0)],
                ),
              ),
            ),
            Positioned(
              left: 210,
              bottom: 80,
              child: Text(
                title,
                style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildCuentaContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 20),
      CircleAvatar(
        radius: 70,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.account_circle,
          size: 100,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        'Nombre de Usuario',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          // Acción para editar perfil
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
         
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Editar Perfil',
          style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          // Navegar a la pantalla de configuración
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConfiguracionScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Configuración',
          style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 40),
      Text(
        'Cursos Completados',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: List.generate(4, (index) {
            return _buildCursoCard('Curso ${index + 1}', Icons.book);
          }),
        ),
      ),
    ],
  );
}


Widget _buildCursoCard(String cursoNombre, IconData icono) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icono, size: 50, color: Colors.blue),
          SizedBox(height: 10),
          Text(
            cursoNombre,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}


Widget _buildComunidadContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildCategorias(), // Añadir contenedor de categorías
      SizedBox(height: 20),
      Expanded(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            _buildPost(
              username: 'Usuario1',
              message: '¡Hola a todos! ¿Qué tal están?',
              likes: 15,
            ),
            SizedBox(height: 20),
            _buildPost(
              username: 'Usuario2',
              message: '¡Buenos días! Espero que tengan un excelente día.',
              likes: 23,
            ),
            SizedBox(height: 20),
            _buildPost(
              username: 'Usuario3',
              message: '¿Alguien sabe cómo resolver este problema? Necesito ayuda.',
              likes: 8,
            ),
          ],
        ),
      ),
    ],
  );
}





Widget _buildCategorias() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCategoriaItem(icon: Icons.tag, label: 'Todas'),
        _buildCategoriaItem(icon: Icons.people, label: 'Soluciones'),
        _buildCategoriaItem(icon: Icons.school, label: 'Platica'),
        _buildCategoriaItem(icon: Icons.work, label: 'Sircuitos'),
      ],
    ),
  );
}

Widget _buildCategoriaItem({required IconData icon, required String label}) {
  return Column(
    children: [
      Icon(icon, size: 30),
      SizedBox(height: 5),
      Text(label),
    ],
  );
}

Widget _buildPost({required String username, required String message, required int likes}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$username',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Text(
        '$message',
      ),
      SizedBox(height: 8),
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {
              // Acción para dar "me gusta"
            },
          ),
          Text('$likes'),
        ],
      ),
      Divider(),
    ],
  );
}

  Widget _buildListItem({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class NuevaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Pantalla'),
      ),
      body: Center(
        child: Text('Esta es la nueva pantalla'),
      ),
    );
  }
}
