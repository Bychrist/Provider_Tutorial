import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/app_class_provider.dart';
import 'package:provider_tutorial/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<AppClassProvider>(
                  builder: (context, appClassProvider, child) {
                return Text(
                  '${appClassProvider.number}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40.5),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.minus,
                  size: 40,
                  color: Colors.white,
                ),
                onPressed: () {
                  context.read<AppClassProvider>().decriment();
                  if (context.read<AppClassProvider>().number <= 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          'Number can\'t be less than 0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                    mouseCursor: MaterialStateProperty.all<SystemMouseCursor>(
                        SystemMouseCursors.click),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirstPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Go to page 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
