import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/contact_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animation'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(routeContact());
        },
        child: const Icon(Icons.contact_phone),
      ),
      body: Center(
        child: AnimatedContainer(
          width: isTrue ? 300 : 50,
          height: isTrue ? 300 : 50,
          duration: const Duration(milliseconds: 500),
          child: InkWell(
            onTap: () {
              setState(() {
                isTrue = !isTrue;
              });
            },
            child: const Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://asset.kompas.com/crops/FP4yz3nX6X_3wjKvz4lb3CTZXQY=/124x0:1622x999/750x500/data/photo/2019/12/16/5df735db5ae62.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

Route routeContact() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ContactScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
