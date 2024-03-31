import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key, required this.imgUrl, this.name})
      : super(key: key);

  final String imgUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(imgUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}
