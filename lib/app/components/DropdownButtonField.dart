import 'package:flutter/material.dart';

class DropdownButtonField extends StatefulWidget {
  dynamic items;
  IconData icon;
  String hint;
  DropdownButtonField({Key key, this.items, this.icon, this.hint})
      : super(key: key);

  @override
  _DropdownButtonFieldState createState() => _DropdownButtonFieldState();
}

class _DropdownButtonFieldState extends State<DropdownButtonField> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 0.0,
              bottom: 30.0,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  bottom: 4.0,
                  left: 9.0,
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
                  hint: Text(widget.hint ?? 'Select Item'),
                  value: _value,
                  icon: Icon(
                    Icons.arrow_downward,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 17.0,
                  ),
                  underline: Container(height: 0),
                  onChanged: (String value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  items: widget.items.map<DropdownMenuItem<String>>(
                      (Map<String, String> value) {
                    return DropdownMenuItem<String>(
                      value: value['value'],
                      child: Text(value['title']),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 12.0,
                ),
                child: Text(
                  'Data sadfasdf',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffde6969),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
