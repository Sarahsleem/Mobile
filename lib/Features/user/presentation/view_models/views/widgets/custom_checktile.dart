import 'package:flutter/material.dart';

class CustomChecktile extends StatefulWidget {
  CustomChecktile({super.key, this.preText, this.sufText, this.onTap});
  final String? preText;
  final String? sufText;
  Function()? onTap;
  @override
  State<CustomChecktile> createState() => _CustomChecktileState();
}

class _CustomChecktileState extends State<CustomChecktile> {
  @override
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 0.8, // Adjust the scale factor as needed
          child: Checkbox(
            activeColor: Colors.white,
            value: isChecked,
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
            },
          ),
        ),
        Text(
          '${widget.preText}',
          style: const TextStyle(fontFamily: 'Inter', fontSize: 14),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4.5,
        ),
        TextButton(
          onPressed: widget.onTap,
          child: Text(
            '${widget.sufText}',
            style: const TextStyle(
                color: Colors.white, fontFamily: 'Inter', fontSize: 14),
          ),
        ),
      ],
    );
  }
}
