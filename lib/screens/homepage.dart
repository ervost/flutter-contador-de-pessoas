import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    int contador = 0;

    void decrement() {
      setState(() {
        contador--;

      });
    }
    void increment() {
      setState(() {
        contador++;
      });
    }
    bool get isEmpty => contador == 0;
    bool get isFull => contador == 20;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.cover,
                )
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                 Text(
                 isFull ? 'Lotado' : 'Pode entrar',
                  style: TextStyle(
                    fontSize: 26.0,
                    color: isFull ? Colors.red :  Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 10,
                  ),
                ),
                Padding(padding: const EdgeInsets.all(48),
                  child:  Text(
                    contador.toString(),
                    style: const TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 6,
                        color: Colors.blue),
                  ),),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: isEmpty ? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
                          fixedSize: const Size(100, 100),
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.green, width:5),
                            borderRadius: BorderRadius.circular(16),
                          )
                      ),
                      child: const Text('Saiu', style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),),
                    ),
                    const SizedBox(width: 44),
                    TextButton(
                      onPressed: isFull ? null :  increment,
                      style: TextButton.styleFrom(
                          backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                          fixedSize: const Size(100,100),
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.green, width:5),
                            borderRadius: BorderRadius.circular(16),
                          )
                      ),
                      child: const Text('Entrou', style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),),
                    )
                  ],
                )
              ],
            )
        ),
      );
    }
  }



