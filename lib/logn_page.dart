import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgraoundSign(),
        child: Column(
          children: <Widget>[
            Container(),
          ],
        ),
      ),
    );
  }
}

class BackgraoundSign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();
    Path mainBackground = Path();
    mainBackground.addRect(
      Rect.fromLTRB(0, 0, sw, sh),
    );
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    Path blueWave = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.5);
    blueWave.quadraticBezierTo(sw * 0.5, sh * .45, sw * 0.2, 0);
    blueWave.close();
    paint.color = Colors.lightBlue.shade300;
    canvas.drawPath(blueWave, paint);

    Path greyWev = Path();
    greyWev.lineTo(sw, 0);
    greyWev.lineTo(sw, sh * 0.1); //(x,y)
    greyWev.cubicTo(sw * 0.95, sh * 0.15, sw * 0.65, sh * 0.15, sw * 0.6,
        sh * 0.38); //(x1,y1,x2,y2,x3,y3)
    greyWev.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
    greyWev.close();
    paint.color = Colors.grey.shade800;
    canvas.drawPath(greyWev, paint);

    Path yellowWev = Path();

    yellowWev.lineTo(sw * 0.7, 0);
    yellowWev.cubicTo(
        sw * 0.6, sh * 0.05, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    yellowWev.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    yellowWev.close();
    paint.color = Colors.orange.shade300;
    canvas.drawPath(yellowWev, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
