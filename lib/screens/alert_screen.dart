import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Title'),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [Text('This is the content from the alert')]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Title'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [Text('This is the content from the alert')]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'show alert',
                style: TextStyle(fontSize: 20),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
