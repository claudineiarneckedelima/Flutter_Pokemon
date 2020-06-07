import 'package:flutter/material.dart';

class DropdownButtonField extends StatefulWidget {
  dynamic items;
  IconData icon;
  DropdownButtonField({Key key, this.items, this.icon}) : super(key: key);

  @override
  _DropdownButtonFieldState createState() => _DropdownButtonFieldState();
}

class _DropdownButtonFieldState extends State<DropdownButtonField> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 4.0,
            bottom: 4.0,
            left: 0.0,
            right: 16.0,
          ),
          child: Center(
            child: Icon(
              Icons.star,
              color: Colors.black45,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 4.0,
              bottom: 4.0,
              left: 8.0,
              right: 8.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text('Select Item'),
              value: _value,
              icon: Icon(
                Icons.arrow_downward,
                color: Colors.black45,
              ),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black45),
              underline: Container(height: 0),
              onChanged: (String value) {
                setState(() {
                  _value = value;
                });
              },
              items: widget.items
                  .map<DropdownMenuItem<String>>((Map<String, String> value) {
                return DropdownMenuItem<String>(
                  value: value['value'],
                  child: Text(value['title']),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
