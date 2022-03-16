import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.radius,
    required this.onTap,
  }) : super(key: key);

  final double radius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: radius,
          decoration:
              BoxDecoration(color: Colors.green[100], shape: BoxShape.circle),
        ),
      ),
    );
  }
}

// class ButtonPainter extends CustomPainter {
//   ButtonPainter(this.size);
//   final Size size;
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 3;
//     var path = Path();

//     path.addArc(
//       Rect.fromCircle(
//         center: Offset(size.width / 2, size.height / 2),
//         radius: this.size.width / 5,
//       ),
//       math.pi,
//       math.pi,
//     );

//     canvas.drawPath(path, paint);
//     canvas.drawLine(Offset(-this.size.width, size.width / 2),
//         Offset(-this.size.width / 5 + 12, size.height / 2), paint);

//     canvas.drawPath(path, paint);
//     canvas.drawLine(Offset(this.size.width / 5 + 10, size.width / 2),
//         Offset(this.size.width, size.height / 2), paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
