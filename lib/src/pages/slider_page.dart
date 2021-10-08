import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [_createSlider(), _createImage()],
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
        onChanged: (value) => setState(() {
              _sliderValue = value;
            }),
        value: _sliderValue);
  }

  Widget _createImage() {
    return Image(
        image: const NetworkImage(
            'https://cinematicos.net/wp-content/uploads/l-intro-1631292362.jpg'),
        width: _sliderValue,
        fit: BoxFit.contain
    );
  }
}
