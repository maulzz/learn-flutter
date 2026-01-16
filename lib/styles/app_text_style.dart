import 'package:flutter/material.dart';

class AppTextStyle {
  static const mainText = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const subMainText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const subText = TextStyle(fontSize: 14, color: Colors.grey);
  static const btnText = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}

class StyledButton extends StatelessWidget {
  final String txt;
  final Color bg;
  final VoidCallback onPressed;

  const StyledButton({
    super.key,
    required this.txt,
    required this.bg,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(bg),
        foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
      ),

      child: Text(txt, style: AppTextStyle.btnText),
    );
  }
}

class HitungIpk extends StatelessWidget {
  final double ipk;

  Color ipkColor(double ipk) {
    if (ipk >= 3.5) {
      return Colors.green;
    } else if (ipk >= 3.0) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  const HitungIpk({super.key, required this.ipk});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: 22, color: ipkColor(ipk)),
        SizedBox(width: 6),
        Text("IPK ${ipk}"),
      ],
    );
  }
}

class StyledBox extends StatelessWidget {
  final String text;

  const StyledBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
              spreadRadius: 5,
            ),
          ],
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
