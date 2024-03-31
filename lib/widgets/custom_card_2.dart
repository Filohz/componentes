import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

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
          const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: const Text('Este es un paisaje'),
          ),
        ],
      ),
    );
  }
}
