import 'package:flutter/material.dart';
import 'package:widgets/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoutes.menuOptions[index].name),
                leading: Icon(AppRoutes.menuOptions[index].icon),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
