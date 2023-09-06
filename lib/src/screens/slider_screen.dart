import 'package:flutter/material.dart';
import 'package:flutter_components/src/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slideValue = 150;
  bool _slideEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider and Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.lightPrimaryColor,
            min: 100,
            divisions: 20,
            max: 500,
            value: _slideValue,
            onChanged: _slideEnable
                ? (value) {
                    setState(() {
                      _slideValue = value;
                    });
                  }
                : null,
          ),
          //Checkbox simple
          Checkbox(
              value: _slideEnable,
              onChanged: (value) {
                setState(() {
                  _slideEnable = value ?? true;
                });
              }),
          //Checkbox complejo
          CheckboxListTile(
            value: _slideEnable,
            title: const Text("Activar slide"),
            onChanged: (value) {
              setState(() {
                _slideEnable = value ?? true;
              });
            },
          ),
          SwitchListTile.adaptive(
            value: _slideEnable,
            title: const Text("Activar slide"),
            onChanged: (value) {
              setState(() {
                _slideEnable = value;
              });
            },
          ),
          //Info aplicacion
          AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                height: _slideValue,
                fit: BoxFit.contain,
                image: const NetworkImage(
                  "https://th.bing.com/th/id/R.4a72946f6be200c3760cf30828dce68f?rik=0l6w%2bkcikN%2bNCg&pid=ImgRaw&r=0",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
