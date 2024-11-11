import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NavigationDialogScreen();
}

class _NavigationDialogScreen extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Faradilla'),
      ),
      body: Center(
        child: 
          ElevatedButton(
            child: const Text('Change Color'),
            onPressed: () {
            _showColorDialog(context);
            }
          ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async{
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very Important Question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                setState(() {
                  color = Colors.pink.shade200;
                });
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                setState(() {
                  color = Colors.green.shade200;
                });
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Grey'),
              onPressed: () {
                setState(() {
                  color = Colors.grey.shade200;
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}


