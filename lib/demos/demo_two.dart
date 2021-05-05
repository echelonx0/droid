// import 'package:flutter/material.dart';

// class DemoTwo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//   decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
//   child: new TabBar(
//     controller: _controller,
//     tabs: [
//       new Tab(
//         icon: const Icon(Icons.home),
//         text: 'Address',
//       ),
//       new Tab(
//         icon: const Icon(Icons.my_location),
//         text: 'Location',
//       ),
//     ],
//   ),
// );
//   }
// }

// new
// new Container(
//   height: 80.0,
//   child: new TabBarView(
//     controller: _controller,
//     children: <Widget>[
//       new Card(
//         child: new ListTile(
//           leading: const Icon(Icons.home),
//           title: new TextField(
//             decoration: const InputDecoration(hintText: 'Search for address...'),
//           ),
//         ),
//       ),
//       new Card(
//         child: new ListTile(
//           leading: const Icon(Icons.location_on),
//           title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
//           trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
//         ),
//       ),
//     ],
//   ),
// ),
