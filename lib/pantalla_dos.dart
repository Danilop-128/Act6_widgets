import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..addListener(() {
        setState(() {}); // Esto fuerza un rebuild cuando la animación cambia
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Dos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPlay) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
            setState(() {
              _isPlay = !_isPlay;
            });
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
            color: Colors.blue, // Añade color para mejor visibilidad
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PantallaDos(),
    debugShowCheckedModeBanner: false,
  ));
}
