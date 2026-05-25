import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() => runApp(const MiApp3D());

class MiApp3D extends StatelessWidget {
  const MiApp3D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entorno VR 3D',
      theme: ThemeData.dark(), // Mantiene el estilo oscuro general
      home: const Visor3DHome(),
    );
  }
}

class Visor3DHome extends StatelessWidget {
  const Visor3DHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visor 3D Estándar'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        elevation: 4,
      ),
      // El contenedor ocupa todo el fondo con un color gris oscuro neutro
      body: Container(
        color: const Color.fromARGB(255, 30, 30, 30),
        child: const ModelViewer(
          src: 'assets/objeto.glb', // Tu objeto único original fijo en el plano
          alt: "Modelo 3D",
          ar: true,               // Mantiene la opción de Realidad Aumentada si se requiere
          autoRotate: false,       // Desactivado para que el usuario lo mueva manualmente
          cameraControls: true,   // Permite rotar y mover el objeto con los dedos
          disableZoom: false,     // Permite hacer zoom in / zoom out
        ),
      ),
    );
  }
}