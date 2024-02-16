import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;
  final double height;
  final EdgeInsets? margin;
  final BorderRadius borderRadius;

  const ImageButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
    this.height = 200.0,
    this.margin,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8.0),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: onPressed,
            child: const SizedBox.expand(),
          ),
        ],
      ),
    );
  }
}
