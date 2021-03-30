import 'package:flutter/material.dart';

class ShowCartContent extends StatelessWidget {
  final title;
  final Function deleteFunction;

  const ShowCartContent({Key key, this.title, this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      // child: Row(
      //   children: <Widget>[
      //     Container(color: Colors.green,),

      //   ],
      // ),
      child: ListTile(
        leading: Image.network('https://via.placeholder.com/150'),
        title: Column(
          children: [
            Text(title),
            Text('Meal subtitle'),
          ],
        ),
        subtitle: Text('Litres'),
        trailing: Column(
          children: [
            Text('R300'),
          ],
        ),
        onTap: deleteFunction,
      ),
    );
  }
}
