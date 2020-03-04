import 'package:flutter/material.dart';

class SwitchSetting extends StatefulWidget {
  final String settingName;
  final MaterialColor materialColor;

  SwitchSetting(this.settingName, this.materialColor);

  @override
  _SwitchSettingState createState() => _SwitchSettingState();
}

class _SwitchSettingState extends State<SwitchSetting> {
  bool _isActivated = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.settingName, style: TextStyle(fontSize: 20.0),),
          ),
          Switch(
            value: _isActivated,
            onChanged: (value) {
              setState(() {
                _isActivated = value;
              });
            },
            activeColor: widget.materialColor,
            activeTrackColor: widget.materialColor,
          ),
        ],
      ),
    );
  }
}
