import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;
  bool _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            _createImage()
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        divisions: 20,
        min: 10,
        max: 400,
        onChanged: (_blockSlider)
            ? null
            : (value) => setState(() {
                  _sliderValue = value;
                }),
        value: _sliderValue);
  }

  Widget _createCheckBox() {
    /* return Checkbox(
        value: _blockSlider,
        onChanged: (value) => setState(() {
              _blockSlider = value ?? false;
            })); */
    return CheckboxListTile(
        title: const Text('Bloquear Slider'),
        value: _blockSlider,
        onChanged: (value) => setState(() {
              _blockSlider = value ?? false;
            }));
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: const Text('Bloquear Slider'),
        value: _blockSlider,
        onChanged: (value) => setState(() {
              _blockSlider = value;
            }));
  }

  Widget _createImage() {
    return Expanded(
      child: Image(
          image: const NetworkImage(
              'https://cinematicos.net/wp-content/uploads/l-intro-1631292362.jpg'),
          width: _sliderValue,
          fit: BoxFit.contain),
    );
  }
}
