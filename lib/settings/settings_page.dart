import 'package:flutter/material.dart';
import 'package:improving_your_ui/settings/switch_settings.dart';

class SettingsPage extends StatefulWidget {
  final MaterialColor materialColor;
  SettingsPage({
    this.materialColor,
  });

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: widget.materialColor,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    SwitchSetting('Cronological Sorting', widget.materialColor),
                    SizedBox(height: 16.0),
                    SwitchSetting('Vibration on Login Screen', widget.materialColor), // Noob features
                    SizedBox(height: 16.0),
                    SwitchSetting('Backup Reminder', widget.materialColor),
                  ],
                ),
              ),
            ),
            Row(),
            Row(),
          ],
        ),
      ),
    );
  }
}
