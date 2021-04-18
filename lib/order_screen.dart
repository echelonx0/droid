import 'package:flutter/material.dart';

enum OrderType {
  plate,
  litres,
}

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
//Use enums
  OrderType orderType = OrderType.plate;

  //Track state
  bool _plateSelected = true;
  bool _litresSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: Text('I want to order a plate'),
            value: _plateSelected,
            onChanged: (bool value) {
              setState(() {
                _plateSelected = value;
                _litresSelected = !_plateSelected;
                _plateSelected == true
                    ? orderType = OrderType.plate
                    : orderType = OrderType.litres;
                print('The variable order type is is set to $orderType');
              });
            },
            activeColor: Colors.amber,
            checkColor: Colors.black,
          ),
          CheckboxListTile(
            title: Text('I want to order 4 litres'),
            value: _litresSelected,
            //secondary: Icon(Icons.palette),
            onChanged: (bool value) {
              setState(() {
                _litresSelected = value;
                _plateSelected = !_litresSelected;
                _litresSelected == true
                    ? orderType = OrderType.litres
                    : orderType = OrderType.plate;
                print('The variable checked is set to $orderType');
              });
            },
            activeColor: Colors.amber,
            checkColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
