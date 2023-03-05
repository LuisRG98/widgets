import 'package:flutter/material.dart';
import 'package:widgets/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/images/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.fill,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name!),
          )
      ]),
    );
  }
}
