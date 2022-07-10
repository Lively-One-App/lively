import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/radio/radio_cubit.dart';

class LivelyIcon extends StatelessWidget {
  LivelyIcon(
      {Key? key,
      required this.size,
      required this.controller,
      required this.rotate})
      : super(key: key);
  final Size size;
  final AnimationController controller;
  final Animation<double> rotate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<RadioCubit, RadioState>(
      builder: (context, state) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, _) => Transform(
            transform: Matrix4.rotationZ(rotate.value),
            child: CustomPaint(
              painter: FramePainter(
                  size: size / 2,
                  color: state.whenOrNull(
                    beforeStopping: (() {
                      controller.reverse();
                      return theme.scaffoldBackgroundColor;
                    }),
                    loaded: () {
                      return theme.iconTheme.color!;
                    },
                  )!,
                  rotate: rotate.value),
            ),
          ),
        );
      },
    );
  }
}

class FramePainter extends CustomPainter {
  const FramePainter({
    required this.size,
    required this.color,
    required this.rotate,
  });
  final double rotate;
  final Size size;
  final Color color;
  @override
  void paint(Canvas canvas, _) {
    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.4602103, size.height * 0.9655059);
    path_1.lineTo(size.width * 0.3937989, size.height * 0.9194294);
    path_1.lineTo(size.width * 0.3811540, size.height * 0.9119618);
    path_1.lineTo(size.width * 0.3524517, size.height * 0.8897235);
    path_1.lineTo(size.width * 0.3404782, size.height * 0.8798882);
    path_1.lineTo(size.width * 0.3224023, size.height * 0.8585382);
    path_1.lineTo(size.width * 0.3110644, size.height * 0.8427882);
    path_1.lineTo(size.width * 0.3022920, size.height * 0.8280706);
    path_1.lineTo(size.width * 0.2900805, size.height * 0.8016618);
    path_1.lineTo(size.width * 0.2787138, size.height * 0.7644824);
    path_1.lineTo(size.width * 0.2689368, size.height * 0.7390971);
    path_1.lineTo(size.width * 0.1863356, size.height * 0.7243735);
    path_1.lineTo(size.width * 0.1634816, size.height * 0.7187235);
    path_1.cubicTo(
        size.width * 0.07803874,
        size.height * 0.6893500,
        size.width * 0.008413851,
        size.height * 0.3972118,
        size.width * 0.01159943,
        size.height * 0.08403412);
    path_1.cubicTo(
        size.width * 0.2031345,
        size.height * 0.1079568,
        size.width * 0.3215218,
        size.height * 0.02870741,
        size.width * 0.4745943,
        size.height * 0.02996059);
    path_1.cubicTo(
        size.width * 0.5043080,
        size.height * 0.03020382,
        size.width * 0.5403138,
        size.height * 0.02149306,
        size.width * 0.5637345,
        size.height * 0.06546912);
    path_1.lineTo(size.width * 0.5795736, size.height * 0.09521206);
    path_1.cubicTo(
        size.width * 0.6793069,
        size.height * 0.2734059,
        size.width * 0.8498161,
        size.height * 0.6351529,
        size.width * 0.9613977,
        size.height * 0.7153882);
    path_1.lineTo(size.width * 0.9722115, size.height * 0.7413118);
    path_1.cubicTo(
        size.width * 0.9557517,
        size.height * 1.026268,
        size.width * 0.6903034,
        size.height * 0.5345235,
        size.width * 0.5786011,
        size.height * 0.5055382);
    path_1.cubicTo(
        size.width * 0.5829678,
        size.height * 0.5552176,
        size.width * 0.6212759,
        size.height * 0.8776118,
        size.width * 0.5777966,
        size.height * 0.9060118);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color.withOpacity(1.0);
    canvas
      ..translate(-size.width / 2, -size.height * 0.4)
      ..drawPath(path_1, paint_1_fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.5795736, size.height * 0.09521206);
    path_2.cubicTo(
        size.width * 0.7110172,
        size.height * 0.1346350,
        size.width * 0.8383540,
        size.height * 0.2044579,
        size.width * 0.9695356,
        size.height * 0.1466135);
    path_2.lineTo(size.width * 0.9825161, size.height * 0.1422618);
    path_2.cubicTo(
        size.width * 1.005154,
        size.height * 0.3838618,
        size.width * 0.7797931,
        size.height * 0.3568618,
        size.width * 0.7237425,
        size.height * 0.3608824);
    path_2.lineTo(size.width * 0.5795736, size.height * 0.09521206);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4212103, size.height * 0.9405059);
    path_9.lineTo(size.width * 0.4195563, size.height * 0.9545882);
    path_9.lineTo(size.width * 0.4197782, size.height * 0.9547588);
    path_9.lineTo(size.width * 0.4200034, size.height * 0.9548824);
    path_9.lineTo(size.width * 0.4212103, size.height * 0.9405059);
    path_9.close();
    path_9.moveTo(size.width * 0.4762138, size.height * 0.9707265);
    path_9.lineTo(size.width * 0.4750069, size.height * 0.9851059);
    path_9.lineTo(size.width * 0.4756333, size.height * 0.9854500);
    path_9.lineTo(size.width * 0.4762736, size.height * 0.9854324);
    path_9.lineTo(size.width * 0.4762138, size.height * 0.9707265);
    path_9.close();
    path_9.moveTo(size.width * 0.4982713, size.height * 0.9701441);
    path_9.lineTo(size.width * 0.4983310, size.height * 0.9848471);
    path_9.lineTo(size.width * 0.5004264, size.height * 0.9847941);
    path_9.lineTo(size.width * 0.5020172, size.height * 0.9812971);
    path_9.lineTo(size.width * 0.4982713, size.height * 0.9701441);
    path_9.close();
    path_9.moveTo(size.width * 0.3937989, size.height * 0.9194294);
    path_9.lineTo(size.width * 0.3954517, size.height * 0.9053471);
    path_9.cubicTo(
        size.width * 0.3953333,
        size.height * 0.9052559,
        size.width * 0.3952126,
        size.height * 0.9051735,
        size.width * 0.3950908,
        size.height * 0.9051029);
    path_9.lineTo(size.width * 0.3937989, size.height * 0.9194294);
    path_9.close();
    path_9.moveTo(size.width * 0.3811540, size.height * 0.9119618);
    path_9.lineTo(size.width * 0.3794885, size.height * 0.9260353);
    path_9.cubicTo(
        size.width * 0.3796115,
        size.height * 0.9261294,
        size.width * 0.3797356,
        size.height * 0.9262147,
        size.width * 0.3798609,
        size.height * 0.9262882);
    path_9.lineTo(size.width * 0.3811540, size.height * 0.9119618);
    path_9.close();
    path_9.moveTo(size.width * 0.3524517, size.height * 0.8897235);
    path_9.lineTo(size.width * 0.3506954, size.height * 0.9037265);
    path_9.lineTo(size.width * 0.3507862, size.height * 0.9037971);
    path_9.lineTo(size.width * 0.3524517, size.height * 0.8897235);
    path_9.close();
    path_9.moveTo(size.width * 0.3404782, size.height * 0.8798882);
    path_9.lineTo(size.width * 0.3380701, size.height * 0.8932412);
    path_9.cubicTo(
        size.width * 0.3382816,
        size.height * 0.8934912,
        size.width * 0.3384989,
        size.height * 0.8937088,
        size.width * 0.3387218,
        size.height * 0.8938912);
    path_9.lineTo(size.width * 0.3404782, size.height * 0.8798882);
    path_9.close();
    path_9.moveTo(size.width * 0.3224023, size.height * 0.8585382);
    path_9.lineTo(size.width * 0.3196598, size.height * 0.8714618);
    path_9.cubicTo(
        size.width * 0.3197690,
        size.height * 0.8716147,
        size.width * 0.3198805,
        size.height * 0.8717588,
        size.width * 0.3199931,
        size.height * 0.8718912);
    path_9.lineTo(size.width * 0.3224023, size.height * 0.8585382);
    path_9.close();
    path_9.moveTo(size.width * 0.3110644, size.height * 0.8427882);
    path_9.lineTo(size.width * 0.3079138, size.height * 0.8550853);
    path_9.cubicTo(
        size.width * 0.3080460,
        size.height * 0.8553088,
        size.width * 0.3081828,
        size.height * 0.8555176,
        size.width * 0.3083218,
        size.height * 0.8557118);
    path_9.lineTo(size.width * 0.3110644, size.height * 0.8427882);
    path_9.close();
    path_9.moveTo(size.width * 0.3022920, size.height * 0.8280706);
    path_9.lineTo(size.width * 0.2985816, size.height * 0.8393029);
    path_9.cubicTo(
        size.width * 0.2987598,
        size.height * 0.8396853,
        size.width * 0.2989460,
        size.height * 0.8400441,
        size.width * 0.2991402,
        size.height * 0.8403676);
    path_9.lineTo(size.width * 0.3022920, size.height * 0.8280706);
    path_9.close();
    path_9.moveTo(size.width * 0.2900805, size.height * 0.8016618);
    path_9.lineTo(size.width * 0.2855540, size.height * 0.8107235);
    path_9.cubicTo(
        size.width * 0.2857966,
        size.height * 0.8115147,
        size.width * 0.2860701,
        size.height * 0.8122441,
        size.width * 0.2863713,
        size.height * 0.8128941);
    path_9.lineTo(size.width * 0.2900805, size.height * 0.8016618);
    path_9.close();
    path_9.moveTo(size.width * 0.2787138, size.height * 0.7644824);
    path_9.lineTo(size.width * 0.2832402, size.height * 0.7554235);
    path_9.cubicTo(
        size.width * 0.2831057,
        size.height * 0.7549824,
        size.width * 0.2829609,
        size.height * 0.7545588,
        size.width * 0.2828069,
        size.height * 0.7541618);
    path_9.lineTo(size.width * 0.2787138, size.height * 0.7644824);
    path_9.close();
    path_9.moveTo(size.width * 0.2689368, size.height * 0.7390971);
    path_9.lineTo(size.width * 0.2730299, size.height * 0.7287765);
    path_9.cubicTo(
        size.width * 0.2720471,
        size.height * 0.7262235,
        size.width * 0.2707333,
        size.height * 0.7246765,
        size.width * 0.2693356,
        size.height * 0.7244265);
    path_9.lineTo(size.width * 0.2689368, size.height * 0.7390971);
    path_9.close();
    path_9.moveTo(size.width * 0.1863356, size.height * 0.7243735);
    path_9.lineTo(size.width * 0.1857828, size.height * 0.7390176);
    path_9.lineTo(size.width * 0.1859368, size.height * 0.7390441);
    path_9.lineTo(size.width * 0.1863356, size.height * 0.7243735);
    path_9.close();
    path_9.moveTo(size.width * 0.1634816, size.height * 0.7187235);
    path_9.lineTo(size.width * 0.1627161, size.height * 0.7333000);
    path_9.cubicTo(
        size.width * 0.1627874,
        size.height * 0.7333235,
        size.width * 0.1628575,
        size.height * 0.7333441,
        size.width * 0.1629287,
        size.height * 0.7333618);
    path_9.lineTo(size.width * 0.1634816, size.height * 0.7187235);
    path_9.close();
    path_9.moveTo(size.width * 0.01159943, size.height * 0.08403412);
    path_9.lineTo(size.width * 0.01187954, size.height * 0.06934588);
    path_9.cubicTo(
        size.width * 0.01033452,
        size.height * 0.06915294,
        size.width * 0.008824287,
        size.height * 0.07056176,
        size.width * 0.007690333,
        size.height * 0.07325412);
    path_9.cubicTo(
        size.width * 0.006556379,
        size.height * 0.07594647,
        size.width * 0.005894448,
        size.height * 0.07969471,
        size.width * 0.005854207,
        size.height * 0.08365147);
    path_9.lineTo(size.width * 0.01159943, size.height * 0.08403412);
    path_9.close();
    path_9.moveTo(size.width * 0.4745943, size.height * 0.02996059);
    path_9.lineTo(size.width * 0.4745759, size.height * 0.04466647);
    path_9.lineTo(size.width * 0.4745943, size.height * 0.02996059);
    path_9.close();
    path_9.moveTo(size.width * 0.5637345, size.height * 0.06546912);
    path_9.lineTo(size.width * 0.5671345, size.height * 0.05361294);
    path_9.lineTo(size.width * 0.5671345, size.height * 0.05361265);
    path_9.lineTo(size.width * 0.5637345, size.height * 0.06546912);
    path_9.close();
    path_9.moveTo(size.width * 0.5795736, size.height * 0.09521206);
    path_9.lineTo(size.width * 0.5761736, size.height * 0.1070685);
    path_9.lineTo(size.width * 0.5762149, size.height * 0.1071453);
    path_9.lineTo(size.width * 0.5795736, size.height * 0.09521206);
    path_9.close();
    path_9.moveTo(size.width * 0.9613977, size.height * 0.7153882);
    path_9.lineTo(size.width * 0.9653276, size.height * 0.7046559);
    path_9.cubicTo(
        size.width * 0.9646552,
        size.height * 0.7030441,
        size.width * 0.9638402,
        size.height * 0.7018706,
        size.width * 0.9629529,
        size.height * 0.7012324);
    path_9.lineTo(size.width * 0.9613977, size.height * 0.7153882);
    path_9.close();
    path_9.moveTo(size.width * 0.9722115, size.height * 0.7413118);
    path_9.lineTo(size.width * 0.9778966, size.height * 0.7434618);
    path_9.cubicTo(
        size.width * 0.9781724,
        size.height * 0.7386912,
        size.width * 0.9775161,
        size.height * 0.7338794,
        size.width * 0.9761414,
        size.height * 0.7305794);
    path_9.lineTo(size.width * 0.9722115, size.height * 0.7413118);
    path_9.close();
    path_9.moveTo(size.width * 0.5786011, size.height * 0.5055382);
    path_9.lineTo(size.width * 0.5729747, size.height * 0.5085382);
    path_9.lineTo(size.width * 0.5729943, size.height * 0.5087647);
    path_9.lineTo(size.width * 0.5786011, size.height * 0.5055382);
    path_9.close();
    path_9.moveTo(size.width * 0.5763747, size.height * 0.8917618);
    path_9.cubicTo(
        size.width * 0.5733000,
        size.height * 0.8937706,
        size.width * 0.5714425,
        size.height * 0.9017794,
        size.width * 0.5722276,
        size.height * 0.9096500);
    path_9.cubicTo(
        size.width * 0.5730126,
        size.height * 0.9175176,
        size.width * 0.5761425,
        size.height * 0.9222706,
        size.width * 0.5792184,
        size.height * 0.9202618);
    path_9.lineTo(size.width * 0.5763747, size.height * 0.8917618);
    path_9.close();
    path_9.moveTo(size.width * 0.9695356, size.height * 0.1466135);
    path_9.lineTo(size.width * 0.9687897, size.height * 0.1320324);
    path_9.cubicTo(
        size.width * 0.9687126,
        size.height * 0.1320579,
        size.width * 0.9686356,
        size.height * 0.1320876,
        size.width * 0.9685598,
        size.height * 0.1321215);
    path_9.lineTo(size.width * 0.9695356, size.height * 0.1466135);
    path_9.close();
    path_9.moveTo(size.width * 0.9825161, size.height * 0.1422618);
    path_9.lineTo(size.width * 0.9881046, size.height * 0.1388329);
    path_9.cubicTo(
        size.width * 0.9874195,
        size.height * 0.1315153,
        size.width * 0.9846851,
        size.height * 0.1267029,
        size.width * 0.9817690,
        size.height * 0.1276806);
    path_9.lineTo(size.width * 0.9825161, size.height * 0.1422618);
    path_9.close();
    path_9.moveTo(size.width * 0.7237425, size.height * 0.3608824);
    path_9.lineTo(size.width * 0.7203839, size.height * 0.3728147);
    path_9.cubicTo(
        size.width * 0.7214069,
        size.height * 0.3747000,
        size.width * 0.7226437,
        size.height * 0.3756706,
        size.width * 0.7239034,
        size.height * 0.3755824);
    path_9.lineTo(size.width * 0.7237425, size.height * 0.3608824);
    path_9.close();
    path_9.moveTo(size.width * 0.5194425, size.height * 0.09453059);
    path_9.cubicTo(
        size.width * 0.5167805,
        size.height * 0.09010676,
        size.width * 0.5132218,
        size.height * 0.09204235,
        size.width * 0.5114931,
        size.height * 0.09885382);
    path_9.cubicTo(
        size.width * 0.5097632,
        size.height * 0.1056653,
        size.width * 0.5105207,
        size.height * 0.1147729,
        size.width * 0.5131816,
        size.height * 0.1191968);
    path_9.lineTo(size.width * 0.5194425, size.height * 0.09453059);
    path_9.close();
    path_9.moveTo(size.width * 0.4995494, size.height * 0.2297424);
    path_9.cubicTo(
        size.width * 0.4982862,
        size.height * 0.2222921,
        size.width * 0.4949011,
        size.height * 0.2188738,
        size.width * 0.4919897,
        size.height * 0.2221076);
    path_9.cubicTo(
        size.width * 0.4890782,
        size.height * 0.2253415,
        size.width * 0.4877425,
        size.height * 0.2340026,
        size.width * 0.4890057,
        size.height * 0.2414529);
    path_9.lineTo(size.width * 0.4995494, size.height * 0.2297424);
    path_9.close();
    path_9.moveTo(size.width * 0.5174770, size.height * 0.9061412);
    path_9.lineTo(size.width * 0.5117460, size.height * 0.9072088);
    path_9.cubicTo(
        size.width * 0.5119471,
        size.height * 0.9142853,
        size.width * 0.5140943,
        size.height * 0.9199853,
        size.width * 0.5168517,
        size.height * 0.9207588);
    path_9.lineTo(size.width * 0.5174770, size.height * 0.9061412);
    path_9.close();
    path_9.moveTo(size.width * 0.5413655, size.height * 0.9128382);
    path_9.lineTo(size.width * 0.5407391, size.height * 0.9274588);
    path_9.cubicTo(
        size.width * 0.5408793,
        size.height * 0.9274971,
        size.width * 0.5410207,
        size.height * 0.9275235,
        size.width * 0.5411621,
        size.height * 0.9275353);
    path_9.lineTo(size.width * 0.5413655, size.height * 0.9128382);
    path_9.close();
    path_9.moveTo(size.width * 0.5588586, size.height * 0.9144235);
    path_9.lineTo(size.width * 0.5586563, size.height * 0.9291206);
    path_9.cubicTo(
        size.width * 0.5590678,
        size.height * 0.9291559,
        size.width * 0.5594793,
        size.height * 0.9290794,
        size.width * 0.5598839,
        size.height * 0.9288941);
    path_9.lineTo(size.width * 0.5588586, size.height * 0.9144235);
    path_9.close();
    path_9.moveTo(size.width * 0.5801782, size.height * 0.9194794);
    path_9.cubicTo(
        size.width * 0.5833011,
        size.height * 0.9180294,
        size.width * 0.5853747,
        size.height * 0.9103765,
        size.width * 0.5848080,
        size.height * 0.9023853);
    path_9.cubicTo(
        size.width * 0.5842425,
        size.height * 0.8943941,
        size.width * 0.5812517,
        size.height * 0.8890882,
        size.width * 0.5781287,
        size.height * 0.8905382);
    path_9.lineTo(size.width * 0.5801782, size.height * 0.9194794);
    path_9.close();
    path_9.moveTo(size.width * 0.3803621, size.height * 0.6272088);
    path_9.lineTo(size.width * 0.3861092, size.height * 0.6273618);
    path_9.cubicTo(
        size.width * 0.3861414,
        size.height * 0.6193529,
        size.width * 0.3836632,
        size.height * 0.6127471,
        size.width * 0.3805333,
        size.height * 0.6125088);
    path_9.cubicTo(
        size.width * 0.3774034,
        size.height * 0.6122706,
        size.width * 0.3747759,
        size.height * 0.6184853,
        size.width * 0.3746218,
        size.height * 0.6264882);
    path_9.lineTo(size.width * 0.3803621, size.height * 0.6272088);
    path_9.close();
    path_9.moveTo(size.width * 0.3920356, size.height * 0.7018559);
    path_9.lineTo(size.width * 0.3894460, size.height * 0.7149824);
    path_9.cubicTo(
        size.width * 0.3897368,
        size.height * 0.7153588,
        size.width * 0.3900391,
        size.height * 0.7156706,
        size.width * 0.3903506,
        size.height * 0.7159147);
    path_9.lineTo(size.width * 0.3920356, size.height * 0.7018559);
    path_9.close();
    path_9.moveTo(size.width * 0.4297621, size.height * 0.7183588);
    path_9.lineTo(size.width * 0.4315402, size.height * 0.7323441);
    path_9.lineTo(size.width * 0.4315414, size.height * 0.7323441);
    path_9.lineTo(size.width * 0.4297621, size.height * 0.7183588);
    path_9.close();
    path_9.moveTo(size.width * 0.4628770, size.height * 0.6513382);
    path_9.lineTo(size.width * 0.4680943, size.height * 0.6575059);
    path_9.cubicTo(
        size.width * 0.4694218,
        size.height * 0.6501500,
        size.width * 0.4681759,
        size.height * 0.6414353,
        size.width * 0.4653069,
        size.height * 0.6380088);
    path_9.cubicTo(
        size.width * 0.4624379,
        size.height * 0.6345853,
        size.width * 0.4590276,
        size.height * 0.6377412,
        size.width * 0.4576782,
        size.height * 0.6450706);
    path_9.lineTo(size.width * 0.4628770, size.height * 0.6513382);
    path_9.close();
    path_9.moveTo(size.width * 0.4365149, size.height * 0.8255029);
    path_9.cubicTo(
        size.width * 0.4391218,
        size.height * 0.8301353,
        size.width * 0.4427023,
        size.height * 0.8284794,
        size.width * 0.4445126,
        size.height * 0.8218088);
    path_9.cubicTo(
        size.width * 0.4463230,
        size.height * 0.8151382,
        size.width * 0.4456770,
        size.height * 0.8059735,
        size.width * 0.4430701,
        size.height * 0.8013412);
    path_9.lineTo(size.width * 0.4365149, size.height * 0.8255029);
    path_9.close();
    path_9.moveTo(size.width * 0.2794448, size.height * 0.7352324);
    path_9.cubicTo(
        size.width * 0.2785230,
        size.height * 0.7274618,
        size.width * 0.2753138,
        size.height * 0.7230735,
        size.width * 0.2722759,
        size.height * 0.7254324);
    path_9.cubicTo(
        size.width * 0.2692391,
        size.height * 0.7277912,
        size.width * 0.2675241,
        size.height * 0.7360029,
        size.width * 0.2684460,
        size.height * 0.7437735);
    path_9.lineTo(size.width * 0.2794448, size.height * 0.7352324);
    path_9.close();
    path_9.moveTo(size.width * 0.4228207, size.height * 0.9416147);
    path_9.lineTo(size.width * 0.4211000, size.height * 0.9556441);
    path_9.cubicTo(
        size.width * 0.4212644,
        size.height * 0.9557765,
        size.width * 0.4214310,
        size.height * 0.9558912,
        size.width * 0.4216000,
        size.height * 0.9559853);
    path_9.lineTo(size.width * 0.4228207, size.height * 0.9416147);
    path_9.close();
    path_9.moveTo(size.width * 0.4783425, size.height * 0.9724971);
    path_9.lineTo(size.width * 0.4771207, size.height * 0.9868706);
    path_9.lineTo(size.width * 0.4772609, size.height * 0.9869412);
    path_9.lineTo(size.width * 0.4783425, size.height * 0.9724971);
    path_9.close();
    path_9.moveTo(size.width * 0.5232000, size.height * 0.9071324);
    path_9.cubicTo(
        size.width * 0.5234126,
        size.height * 0.8990265,
        size.width * 0.5210184,
        size.height * 0.8920147,
        size.width * 0.5178517,
        size.height * 0.8914706);
    path_9.cubicTo(
        size.width * 0.5146851,
        size.height * 0.8909235,
        size.width * 0.5119448,
        size.height * 0.8970529,
        size.width * 0.5117310,
        size.height * 0.9051559);
    path_9.lineTo(size.width * 0.5232000, size.height * 0.9071324);
    path_9.close();
    path_9.moveTo(size.width * 0.3530989, size.height * 0.6990265);
    path_9.cubicTo(
        size.width * 0.3502172,
        size.height * 0.7024294,
        size.width * 0.3489586,
        size.height * 0.7111647,
        size.width * 0.3502874,
        size.height * 0.7185412);
    path_9.cubicTo(
        size.width * 0.3516172,
        size.height * 0.7259147,
        size.width * 0.3550310,
        size.height * 0.7291353,
        size.width * 0.3579138,
        size.height * 0.7257324);
    path_9.lineTo(size.width * 0.3530989, size.height * 0.6990265);
    path_9.close();
    path_9.moveTo(size.width * 0.3697299, size.height * 0.7716059);
    path_9.lineTo(size.width * 0.3640276, size.height * 0.7697676);
    path_9.cubicTo(
        size.width * 0.3636356,
        size.height * 0.7777324,
        size.width * 0.3658126,
        size.height * 0.7850324,
        size.width * 0.3689184,
        size.height * 0.7861647);
    path_9.cubicTo(
        size.width * 0.3720241,
        size.height * 0.7873000,
        size.width * 0.3749115,
        size.height * 0.7818500,
        size.width * 0.3754057,
        size.height * 0.7739235);
    path_9.lineTo(size.width * 0.3697299, size.height * 0.7716059);
    path_9.close();
    path_9.moveTo(size.width * 0.3949402, size.height * 0.7199206);
    path_9.cubicTo(
        size.width * 0.3981115,
        size.height * 0.7202529,
        size.width * 0.4007874,
        size.height * 0.7139441,
        size.width * 0.4009184,
        size.height * 0.7058294);
    path_9.cubicTo(
        size.width * 0.4010483,
        size.height * 0.6977147,
        size.width * 0.3985839,
        size.height * 0.6908647,
        size.width * 0.3954115,
        size.height * 0.6905324);
    path_9.lineTo(size.width * 0.3949402, size.height * 0.7199206);
    path_9.close();
    path_9.moveTo(size.width * 0.4200034, size.height * 0.9548824);
    path_9.lineTo(size.width * 0.4750069, size.height * 0.9851059);
    path_9.lineTo(size.width * 0.4774207, size.height * 0.9563500);
    path_9.lineTo(size.width * 0.4224172, size.height * 0.9261265);
    path_9.lineTo(size.width * 0.4200034, size.height * 0.9548824);
    path_9.close();
    path_9.moveTo(size.width * 0.4762736, size.height * 0.9854324);
    path_9.lineTo(size.width * 0.4983310, size.height * 0.9848471);
    path_9.lineTo(size.width * 0.4982115, size.height * 0.9554382);
    path_9.lineTo(size.width * 0.4761540, size.height * 0.9560206);
    path_9.lineTo(size.width * 0.4762736, size.height * 0.9854324);
    path_9.close();
    path_9.moveTo(size.width * 0.5020172, size.height * 0.9812971);
    path_9.lineTo(size.width * 0.5187425, size.height * 0.9445235);
    path_9.lineTo(size.width * 0.5112517, size.height * 0.9222147);
    path_9.lineTo(size.width * 0.4945264, size.height * 0.9589882);
    path_9.lineTo(size.width * 0.5020172, size.height * 0.9812971);
    path_9.close();
    path_9.moveTo(size.width * 0.4228644, size.height * 0.9264206);
    path_9.lineTo(size.width * 0.3954517, size.height * 0.9053471);
    path_9.lineTo(size.width * 0.3921448, size.height * 0.9335147);
    path_9.lineTo(size.width * 0.4195563, size.height * 0.9545882);
    path_9.lineTo(size.width * 0.4228644, size.height * 0.9264206);
    path_9.close();
    path_9.moveTo(size.width * 0.3950908, size.height * 0.9051029);
    path_9.lineTo(size.width * 0.3824471, size.height * 0.8976324);
    path_9.lineTo(size.width * 0.3798609, size.height * 0.9262882);
    path_9.lineTo(size.width * 0.3925057, size.height * 0.9337588);
    path_9.lineTo(size.width * 0.3950908, size.height * 0.9051029);
    path_9.close();
    path_9.moveTo(size.width * 0.3828195, size.height * 0.8978853);
    path_9.lineTo(size.width * 0.3541172, size.height * 0.8756471);
    path_9.lineTo(size.width * 0.3507862, size.height * 0.9037971);
    path_9.lineTo(size.width * 0.3794885, size.height * 0.9260353);
    path_9.lineTo(size.width * 0.3828195, size.height * 0.8978853);
    path_9.close();
    path_9.moveTo(size.width * 0.3542092, size.height * 0.8757206);
    path_9.lineTo(size.width * 0.3422345, size.height * 0.8658853);
    path_9.lineTo(size.width * 0.3387218, size.height * 0.8938912);
    path_9.lineTo(size.width * 0.3506954, size.height * 0.9037265);
    path_9.lineTo(size.width * 0.3542092, size.height * 0.8757206);
    path_9.close();
    path_9.moveTo(size.width * 0.3428862, size.height * 0.8665353);
    path_9.lineTo(size.width * 0.3248103, size.height * 0.8451882);
    path_9.lineTo(size.width * 0.3199931, size.height * 0.8718912);
    path_9.lineTo(size.width * 0.3380701, size.height * 0.8932412);
    path_9.lineTo(size.width * 0.3428862, size.height * 0.8665353);
    path_9.close();
    path_9.moveTo(size.width * 0.3251437, size.height * 0.8456147);
    path_9.lineTo(size.width * 0.3138069, size.height * 0.8298647);
    path_9.lineTo(size.width * 0.3083218, size.height * 0.8557118);
    path_9.lineTo(size.width * 0.3196598, size.height * 0.8714618);
    path_9.lineTo(size.width * 0.3251437, size.height * 0.8456147);
    path_9.close();
    path_9.moveTo(size.width * 0.3142161, size.height * 0.8304912);
    path_9.lineTo(size.width * 0.3054437, size.height * 0.8157735);
    path_9.lineTo(size.width * 0.2991402, size.height * 0.8403676);
    path_9.lineTo(size.width * 0.3079138, size.height * 0.8550853);
    path_9.lineTo(size.width * 0.3142161, size.height * 0.8304912);
    path_9.close();
    path_9.moveTo(size.width * 0.3060023, size.height * 0.8168382);
    path_9.lineTo(size.width * 0.2937908, size.height * 0.7904294);
    path_9.lineTo(size.width * 0.2863713, size.height * 0.8128941);
    path_9.lineTo(size.width * 0.2985816, size.height * 0.8393029);
    path_9.lineTo(size.width * 0.3060023, size.height * 0.8168382);
    path_9.close();
    path_9.moveTo(size.width * 0.2946069, size.height * 0.7926000);
    path_9.lineTo(size.width * 0.2832402, size.height * 0.7554235);
    path_9.lineTo(size.width * 0.2741874, size.height * 0.7735441);
    path_9.lineTo(size.width * 0.2855540, size.height * 0.8107235);
    path_9.lineTo(size.width * 0.2946069, size.height * 0.7926000);
    path_9.close();
    path_9.moveTo(size.width * 0.2828069, size.height * 0.7541618);
    path_9.lineTo(size.width * 0.2730299, size.height * 0.7287765);
    path_9.lineTo(size.width * 0.2648425, size.height * 0.7494206);
    path_9.lineTo(size.width * 0.2746207, size.height * 0.7748059);
    path_9.lineTo(size.width * 0.2828069, size.height * 0.7541618);
    path_9.close();
    path_9.moveTo(size.width * 0.2693356, size.height * 0.7244265);
    path_9.lineTo(size.width * 0.1867356, size.height * 0.7097029);
    path_9.lineTo(size.width * 0.1859368, size.height * 0.7390441);
    path_9.lineTo(size.width * 0.2685368, size.height * 0.7537676);
    path_9.lineTo(size.width * 0.2693356, size.height * 0.7244265);
    path_9.close();
    path_9.moveTo(size.width * 0.1868885, size.height * 0.7097353);
    path_9.lineTo(size.width * 0.1640345, size.height * 0.7040853);
    path_9.lineTo(size.width * 0.1629287, size.height * 0.7333618);
    path_9.lineTo(size.width * 0.1857828, size.height * 0.7390118);
    path_9.lineTo(size.width * 0.1868885, size.height * 0.7097353);
    path_9.close();
    path_9.moveTo(size.width * 0.1642471, size.height * 0.7041500);
    path_9.cubicTo(
        size.width * 0.1238425,
        size.height * 0.6902588,
        size.width * 0.08636724,
        size.height * 0.6137735,
        size.width * 0.05920782,
        size.height * 0.5001324);
    path_9.cubicTo(
        size.width * 0.03211207,
        size.height * 0.3867588,
        size.width * 0.01577989,
        size.height * 0.2382388,
        size.width * 0.01734460,
        size.height * 0.08441676);
    path_9.lineTo(size.width * 0.005854207, size.height * 0.08365147);
    path_9.cubicTo(
        size.width * 0.004233287,
        size.height * 0.2430074,
        size.width * 0.02112080,
        size.height * 0.3971441,
        size.width * 0.04940184,
        size.height * 0.5154765);
    path_9.cubicTo(
        size.width * 0.07761920,
        size.height * 0.6335441,
        size.width * 0.1176770,
        size.height * 0.7178147,
        size.width * 0.1627161,
        size.height * 0.7333000);
    path_9.lineTo(size.width * 0.1642471, size.height * 0.7041500);
    path_9.close();
    path_9.moveTo(size.width * 0.01131920, size.height * 0.09872265);
    path_9.cubicTo(
        size.width * 0.1074759,
        size.height * 0.1107326,
        size.width * 0.1852598,
        size.height * 0.09683412,
        size.width * 0.2580333,
        size.height * 0.08014559);
    path_9.cubicTo(
        size.width * 0.3308621,
        size.height * 0.06344471,
        size.width * 0.3983782,
        size.height * 0.04404265,
        size.width * 0.4745759,
        size.height * 0.04466647);
    path_9.lineTo(size.width * 0.4746126, size.height * 0.01525488);
    path_9.cubicTo(
        size.width * 0.3977379,
        size.height * 0.01462547,
        size.width * 0.3295253,
        size.height * 0.03422147,
        size.width * 0.2570080,
        size.height * 0.05085118);
    path_9.cubicTo(
        size.width * 0.1844356,
        size.height * 0.06749353,
        size.width * 0.1072583,
        size.height * 0.08125853,
        size.width * 0.01187954,
        size.height * 0.06934588);
    path_9.lineTo(size.width * 0.01131920, size.height * 0.09872265);
    path_9.close();
    path_9.moveTo(size.width * 0.4745759, size.height * 0.04466647);
    path_9.cubicTo(
        size.width * 0.4898678,
        size.height * 0.04479176,
        size.width * 0.5057023,
        size.height * 0.04268441,
        size.width * 0.5210448,
        size.height * 0.04596971);
    path_9.cubicTo(
        size.width * 0.5362770,
        size.height * 0.04923147,
        size.width * 0.5498816,
        size.height * 0.05769824,
        size.width * 0.5603345,
        size.height * 0.07732529);
    path_9.lineTo(size.width * 0.5671345, size.height * 0.05361265);
    path_9.cubicTo(
        size.width * 0.5541667,
        size.height * 0.02926394,
        size.width * 0.5380586,
        size.height * 0.02009818,
        size.width * 0.5220034,
        size.height * 0.01666038);
    path_9.cubicTo(
        size.width * 0.5060598,
        size.height * 0.01324629,
        size.width * 0.4890345,
        size.height * 0.01537291,
        size.width * 0.4746126,
        size.height * 0.01525488);
    path_9.lineTo(size.width * 0.4745759, size.height * 0.04466647);
    path_9.close();
    path_9.moveTo(size.width * 0.5603345, size.height * 0.07732500);
    path_9.lineTo(size.width * 0.5761736, size.height * 0.1070679);
    path_9.lineTo(size.width * 0.5829747, size.height * 0.08335588);
    path_9.lineTo(size.width * 0.5671345, size.height * 0.05361294);
    path_9.lineTo(size.width * 0.5603345, size.height * 0.07732500);
    path_9.close();
    path_9.moveTo(size.width * 0.5762839, size.height * 0.1072694);
    path_9.cubicTo(
        size.width * 0.6011322,
        size.height * 0.1516671,
        size.width * 0.6304057,
        size.height * 0.2075271,
        size.width * 0.6621954,
        size.height * 0.2678212);
    path_9.cubicTo(
        size.width * 0.6939494,
        size.height * 0.3280471,
        size.width * 0.7281632,
        size.height * 0.3926000,
        size.width * 0.7627632,
        size.height * 0.4541118);
    path_9.cubicTo(
        size.width * 0.8317632,
        size.height * 0.5767765,
        size.width * 0.9030080,
        size.height * 0.6886765,
        size.width * 0.9598437,
        size.height * 0.7295471);
    path_9.lineTo(size.width * 0.9629529, size.height * 0.7012324);
    path_9.cubicTo(
        size.width * 0.9082057,
        size.height * 0.6618647,
        size.width * 0.8384046,
        size.height * 0.5527735,
        size.width * 0.7693218,
        size.height * 0.4299588);
    path_9.cubicTo(
        size.width * 0.7348805,
        size.height * 0.3687294,
        size.width * 0.7007931,
        size.height * 0.3044176,
        size.width * 0.6690402,
        size.height * 0.2441926);
    path_9.cubicTo(
        size.width * 0.6373218,
        size.height * 0.1840350,
        size.width * 0.6078816,
        size.height * 0.1278538,
        size.width * 0.5828644,
        size.height * 0.08315471);
    path_9.lineTo(size.width * 0.5762839, size.height * 0.1072694);
    path_9.close();
    path_9.moveTo(size.width * 0.9574690, size.height * 0.7261206);
    path_9.lineTo(size.width * 0.9682828, size.height * 0.7520441);
    path_9.lineTo(size.width * 0.9761414, size.height * 0.7305794);
    path_9.lineTo(size.width * 0.9653276, size.height * 0.7046559);
    path_9.lineTo(size.width * 0.9574690, size.height * 0.7261206);
    path_9.close();
    path_9.moveTo(size.width * 0.9665264, size.height * 0.7391618);
    path_9.cubicTo(
        size.width * 0.9646667,
        size.height * 0.7713500,
        size.width * 0.9594897,
        size.height * 0.7904824,
        size.width * 0.9522184,
        size.height * 0.8015412);
    path_9.cubicTo(
        size.width * 0.9446517,
        size.height * 0.8130500,
        size.width * 0.9339034,
        size.height * 0.8172324,
        size.width * 0.9199747,
        size.height * 0.8141147);
    path_9.cubicTo(
        size.width * 0.8920655,
        size.height * 0.8078647,
        size.width * 0.8546356,
        size.height * 0.7731706,
        size.width * 0.8133989,
        size.height * 0.7276500);
    path_9.cubicTo(
        size.width * 0.7928828,
        size.height * 0.7050029,
        size.width * 0.7716080,
        size.height * 0.6798941,
        size.width * 0.7503034,
        size.height * 0.6546647);
    path_9.cubicTo(
        size.width * 0.7290241,
        size.height * 0.6294676,
        size.width * 0.7077092,
        size.height * 0.6041412,
        size.width * 0.6872161,
        size.height * 0.5812059);
    path_9.cubicTo(
        size.width * 0.6464402,
        size.height * 0.5355647,
        size.width * 0.6081264,
        size.height * 0.4984176,
        size.width * 0.5791805,
        size.height * 0.4909059);
    path_9.lineTo(size.width * 0.5780207, size.height * 0.5201676);
    path_9.cubicTo(
        size.width * 0.6049264,
        size.height * 0.5271500,
        size.width * 0.6416828,
        size.height * 0.5623412,
        size.width * 0.6826092,
        size.height * 0.6081500);
    path_9.cubicTo(
        size.width * 0.7029678,
        size.height * 0.6309382,
        size.width * 0.7241609,
        size.height * 0.6561176,
        size.width * 0.7454759,
        size.height * 0.6813559);
    path_9.cubicTo(
        size.width * 0.7667655,
        size.height * 0.7065676,
        size.width * 0.7881713,
        size.height * 0.7318324,
        size.width * 0.8088460,
        size.height * 0.7546559);
    path_9.cubicTo(
        size.width * 0.8499920,
        size.height * 0.8000765,
        size.width * 0.8889908,
        size.height * 0.8367000,
        size.width * 0.9189736,
        size.height * 0.8434147);
    path_9.cubicTo(
        size.width * 0.9339908,
        size.height * 0.8467765,
        size.width * 0.9475540,
        size.height * 0.8428529,
        size.width * 0.9580908,
        size.height * 0.8268235);
    path_9.cubicTo(
        size.width * 0.9689230,
        size.height * 0.8103471,
        size.width * 0.9756414,
        size.height * 0.7825118,
        size.width * 0.9778966,
        size.height * 0.7434618);
    path_9.lineTo(size.width * 0.9665264, size.height * 0.7391618);
    path_9.close();
    path_9.moveTo(size.width * 0.5729943, size.height * 0.5087647);
    path_9.cubicTo(
        size.width * 0.5753023,
        size.height * 0.5350353,
        size.width * 0.5857989,
        size.height * 0.6261559,
        size.width * 0.5904437,
        size.height * 0.7156912);
    path_9.cubicTo(
        size.width * 0.5927644,
        size.height * 0.7604206,
        size.width * 0.5935172,
        size.height * 0.8031235,
        size.width * 0.5912218,
        size.height * 0.8358441);
    path_9.cubicTo(
        size.width * 0.5888966,
        size.height * 0.8689941,
        size.width * 0.5838989,
        size.height * 0.8868500,
        size.width * 0.5763747,
        size.height * 0.8917618);
    path_9.lineTo(size.width * 0.5792184, size.height * 0.9202618);
    path_9.cubicTo(
        size.width * 0.5934345,
        size.height * 0.9109765,
        size.width * 0.5999517,
        size.height * 0.8778794,
        size.width * 0.6025356,
        size.height * 0.8410412);
    path_9.cubicTo(
        size.width * 0.6051494,
        size.height * 0.8037735,
        size.width * 0.6042057,
        size.height * 0.7574471,
        size.width * 0.6018379,
        size.height * 0.7118206);
    path_9.cubicTo(
        size.width * 0.5971069,
        size.height * 0.6206353,
        size.width * 0.5862655,
        size.height * 0.5257206,
        size.width * 0.5842080,
        size.height * 0.5023118);
    path_9.lineTo(size.width * 0.5729943, size.height * 0.5087647);
    path_9.close();
    path_9.moveTo(size.width * 0.5789046, size.height * 0.1098179);
    path_9.cubicTo(
        size.width * 0.7096172,
        size.height * 0.1490215,
        size.width * 0.8382552,
        size.height * 0.2194244,
        size.width * 0.9705115,
        size.height * 0.1611059);
    path_9.lineTo(size.width * 0.9685598, size.height * 0.1321215);
    path_9.cubicTo(
        size.width * 0.8384529,
        size.height * 0.1894915,
        size.width * 0.7124184,
        size.height * 0.1202485,
        size.width * 0.5802425,
        size.height * 0.08060618);
    path_9.lineTo(size.width * 0.5789046, size.height * 0.1098179);
    path_9.close();
    path_9.moveTo(size.width * 0.9702828, size.height * 0.1611950);
    path_9.lineTo(size.width * 0.9832632, size.height * 0.1568429);
    path_9.lineTo(size.width * 0.9817690, size.height * 0.1276806);
    path_9.lineTo(size.width * 0.9687897, size.height * 0.1320324);
    path_9.lineTo(size.width * 0.9702828, size.height * 0.1611950);
    path_9.close();
    path_9.moveTo(size.width * 0.9769276, size.height * 0.1456903);
    path_9.cubicTo(
        size.width * 0.9794908,
        size.height * 0.1730521,
        size.width * 0.9784782,
        size.height * 0.1955953,
        size.width * 0.9749920,
        size.height * 0.2146103);
    path_9.cubicTo(
        size.width * 0.9714655,
        size.height * 0.2338462,
        size.width * 0.9651724,
        size.height * 0.2507359,
        size.width * 0.9563690,
        size.height * 0.2654744);
    path_9.cubicTo(
        size.width * 0.9386115,
        size.height * 0.2952029,
        size.width * 0.9118207,
        size.height * 0.3142324,
        size.width * 0.8817586,
        size.height * 0.3261294);
    path_9.cubicTo(
        size.width * 0.8217172,
        size.height * 0.3498941,
        size.width * 0.7521402,
        size.height * 0.3441324,
        size.width * 0.7235816,
        size.height * 0.3461824);
    path_9.lineTo(size.width * 0.7239034, size.height * 0.3755824);
    path_9.cubicTo(
        size.width * 0.7513954,
        size.height * 0.3736088,
        size.width * 0.8225241,
        size.height * 0.3793382,
        size.width * 0.8835161,
        size.height * 0.3551971);
    path_9.cubicTo(
        size.width * 0.9139713,
        size.height * 0.3431441,
        size.width * 0.9427793,
        size.height * 0.3233735,
        size.width * 0.9626621,
        size.height * 0.2900868);
    path_9.cubicTo(
        size.width * 0.9726782,
        size.height * 0.2733188,
        size.width * 0.9807149,
        size.height * 0.2526494,
        size.width * 0.9853989,
        size.height * 0.2271021);
    path_9.cubicTo(
        size.width * 0.9901230,
        size.height * 0.2013344,
        size.width * 0.9912011,
        size.height * 0.1718715,
        size.width * 0.9881046,
        size.height * 0.1388329);
    path_9.lineTo(size.width * 0.9769276, size.height * 0.1456903);
    path_9.close();
    path_9.moveTo(size.width * 0.7271011, size.height * 0.3489471);
    path_9.lineTo(size.width * 0.5829322, size.height * 0.08327853);
    path_9.lineTo(size.width * 0.5762149, size.height * 0.1071453);
    path_9.lineTo(size.width * 0.7203839, size.height * 0.3728147);
    path_9.lineTo(size.width * 0.7271011, size.height * 0.3489471);
    path_9.close();
    path_9.moveTo(size.width * 0.5842276, size.height * 0.5025353);
    path_9.cubicTo(
        size.width * 0.5793115,
        size.height * 0.4421971,
        size.width * 0.5719080,
        size.height * 0.3554441,
        size.width * 0.5615575,
        size.height * 0.2767803);
    path_9.cubicTo(
        size.width * 0.5563828,
        size.height * 0.2374515,
        size.width * 0.5504172,
        size.height * 0.1997188,
        size.width * 0.5435713,
        size.height * 0.1681306);
    path_9.cubicTo(
        size.width * 0.5367805,
        size.height * 0.1368018,
        size.width * 0.5288299,
        size.height * 0.1101312,
        size.width * 0.5194425,
        size.height * 0.09453059);
    path_9.lineTo(size.width * 0.5131816, size.height * 0.1191968);
    path_9.cubicTo(
        size.width * 0.5202471,
        size.height * 0.1309382,
        size.width * 0.5270816,
        size.height * 0.1526947,
        size.width * 0.5335195,
        size.height * 0.1823962);
    path_9.cubicTo(
        size.width * 0.5399011,
        size.height * 0.2118382,
        size.width * 0.5456080,
        size.height * 0.2477391,
        size.width * 0.5506644,
        size.height * 0.2861650);
    path_9.cubicTo(
        size.width * 0.5607759,
        size.height * 0.3630118,
        size.width * 0.5680632,
        size.height * 0.4482529,
        size.width * 0.5729747,
        size.height * 0.5085382);
    path_9.lineTo(size.width * 0.5842276, size.height * 0.5025353);
    path_9.close();
    path_9.moveTo(size.width * 0.4890057, size.height * 0.2414529);
    path_9.cubicTo(
        size.width * 0.5026195,
        size.height * 0.3217088,
        size.width * 0.5072287,
        size.height * 0.4442912,
        size.width * 0.5089034,
        size.height * 0.5701294);
    path_9.cubicTo(
        size.width * 0.5097356,
        size.height * 0.6327206,
        size.width * 0.5098402,
        size.height * 0.6954147,
        size.width * 0.5100379,
        size.height * 0.7533353);
    path_9.cubicTo(
        size.width * 0.5102345,
        size.height * 0.8110765,
        size.width * 0.5105241,
        size.height * 0.8642647,
        size.width * 0.5117460,
        size.height * 0.9072088);
    path_9.lineTo(size.width * 0.5232092, size.height * 0.9050735);
    path_9.cubicTo(
        size.width * 0.5220195,
        size.height * 0.8632235,
        size.width * 0.5217287,
        size.height * 0.8109794,
        size.width * 0.5215310,
        size.height * 0.7530794);
    path_9.cubicTo(
        size.width * 0.5213345,
        size.height * 0.6953529,
        size.width * 0.5212299,
        size.height * 0.6321882,
        size.width * 0.5203908,
        size.height * 0.5691294);
    path_9.cubicTo(
        size.width * 0.5187218,
        size.height * 0.4436618,
        size.width * 0.5141425,
        size.height * 0.3157676,
        size.width * 0.4995494,
        size.height * 0.2297424);
    path_9.lineTo(size.width * 0.4890057, size.height * 0.2414529);
    path_9.close();
    path_9.moveTo(size.width * 0.5168517, size.height * 0.9207588);
    path_9.lineTo(size.width * 0.5407391, size.height * 0.9274588);
    path_9.lineTo(size.width * 0.5419908, size.height * 0.8982206);
    path_9.lineTo(size.width * 0.5181034, size.height * 0.8915235);
    path_9.lineTo(size.width * 0.5168517, size.height * 0.9207588);
    path_9.close();
    path_9.moveTo(size.width * 0.5411621, size.height * 0.9275353);
    path_9.lineTo(size.width * 0.5586563, size.height * 0.9291206);
    path_9.lineTo(size.width * 0.5590621, size.height * 0.8997265);
    path_9.lineTo(size.width * 0.5415678, size.height * 0.8981412);
    path_9.lineTo(size.width * 0.5411621, size.height * 0.9275353);
    path_9.close();
    path_9.moveTo(size.width * 0.5598839, size.height * 0.9288941);
    path_9.lineTo(size.width * 0.5801782, size.height * 0.9194794);
    path_9.lineTo(size.width * 0.5781287, size.height * 0.8905382);
    path_9.lineTo(size.width * 0.5578345, size.height * 0.8999529);
    path_9.lineTo(size.width * 0.5598839, size.height * 0.9288941);
    path_9.close();
    path_9.moveTo(size.width * 0.1863310, size.height * 0.7390794);
    path_9.cubicTo(
        size.width * 0.1989540,
        size.height * 0.7391059,
        size.width * 0.2171333,
        size.height * 0.7430912,
        size.width * 0.2379011,
        size.height * 0.7466676);
    path_9.cubicTo(
        size.width * 0.2584793,
        size.height * 0.7502088,
        size.width * 0.2813172,
        size.height * 0.7532824,
        size.width * 0.3026333,
        size.height * 0.7512147);
    path_9.cubicTo(
        size.width * 0.3238195,
        size.height * 0.7491588,
        size.width * 0.3441540,
        size.height * 0.7419912,
        size.width * 0.3594103,
        size.height * 0.7240412);
    path_9.cubicTo(
        size.width * 0.3671046,
        size.height * 0.7149882,
        size.width * 0.3737667,
        size.height * 0.7028971,
        size.width * 0.3785368,
        size.height * 0.6867059);
    path_9.cubicTo(
        size.width * 0.3833609,
        size.height * 0.6703324,
        size.width * 0.3860149,
        size.height * 0.6505500,
        size.width * 0.3861092,
        size.height * 0.6273618);
    path_9.lineTo(size.width * 0.3746149, size.height * 0.6270559);
    path_9.cubicTo(
        size.width * 0.3745448,
        size.height * 0.6443265,
        size.width * 0.3726207,
        size.height * 0.6579294,
        size.width * 0.3693586,
        size.height * 0.6690000);
    path_9.cubicTo(
        size.width * 0.3660425,
        size.height * 0.6802559,
        size.width * 0.3611115,
        size.height * 0.6896676,
        size.width * 0.3546092,
        size.height * 0.6973176);
    path_9.cubicTo(
        size.width * 0.3414701,
        size.height * 0.7127765,
        size.width * 0.3229966,
        size.height * 0.7198059,
        size.width * 0.3021977,
        size.height * 0.7218235);
    path_9.cubicTo(
        size.width * 0.2815264,
        size.height * 0.7238294,
        size.width * 0.2592000,
        size.height * 0.7208559,
        size.width * 0.2386736,
        size.height * 0.7173206);
    path_9.cubicTo(
        size.width * 0.2183368,
        size.height * 0.7138176,
        size.width * 0.1994701,
        size.height * 0.7096941,
        size.width * 0.1863402,
        size.height * 0.7096676);
    path_9.lineTo(size.width * 0.1863310, size.height * 0.7390794);
    path_9.close();
    path_9.moveTo(size.width * 0.3746218, size.height * 0.6264882);
    path_9.cubicTo(
        size.width * 0.3742736,
        size.height * 0.6446618,
        size.width * 0.3739529,
        size.height * 0.6621353,
        size.width * 0.3757678,
        size.height * 0.6770441);
    path_9.cubicTo(
        size.width * 0.3777851,
        size.height * 0.6936147,
        size.width * 0.3821690,
        size.height * 0.7055853,
        size.width * 0.3894460,
        size.height * 0.7149824);
    path_9.lineTo(size.width * 0.3946253, size.height * 0.6887265);
    path_9.cubicTo(
        size.width * 0.3894425,
        size.height * 0.6820324,
        size.width * 0.3876287,
        size.height * 0.6755765,
        size.width * 0.3867425,
        size.height * 0.6682971);
    path_9.cubicTo(
        size.width * 0.3856540,
        size.height * 0.6593559,
        size.width * 0.3857264,
        size.height * 0.6475529,
        size.width * 0.3861023,
        size.height * 0.6279294);
    path_9.lineTo(size.width * 0.3746218, size.height * 0.6264882);
    path_9.close();
    path_9.moveTo(size.width * 0.3903506, size.height * 0.7159147);
    path_9.lineTo(size.width * 0.4199977, size.height * 0.7391824);
    path_9.lineTo(size.width * 0.4233678, size.height * 0.7110647);
    path_9.lineTo(size.width * 0.3937207, size.height * 0.6877941);
    path_9.lineTo(size.width * 0.3903506, size.height * 0.7159147);
    path_9.close();
    path_9.moveTo(size.width * 0.4235046, size.height * 0.7390706);
    path_9.cubicTo(
        size.width * 0.4263667,
        size.height * 0.7366235,
        size.width * 0.4290115,
        size.height * 0.7344500,
        size.width * 0.4315402,
        size.height * 0.7323441);
    path_9.lineTo(size.width * 0.4279839, size.height * 0.7043765);
    path_9.cubicTo(
        size.width * 0.4255057,
        size.height * 0.7064382,
        size.width * 0.4227805,
        size.height * 0.7086794,
        size.width * 0.4198609,
        size.height * 0.7111765);
    path_9.lineTo(size.width * 0.4235046, size.height * 0.7390706);
    path_9.close();
    path_9.moveTo(size.width * 0.4315414, size.height * 0.7323441);
    path_9.cubicTo(
        size.width * 0.4395966,
        size.height * 0.7256324,
        size.width * 0.4466931,
        size.height * 0.7194971,
        size.width * 0.4527379,
        size.height * 0.7085618);
    path_9.cubicTo(
        size.width * 0.4590057,
        size.height * 0.6972235,
        size.width * 0.4637563,
        size.height * 0.6815324,
        size.width * 0.4680943,
        size.height * 0.6575059);
    path_9.lineTo(size.width * 0.4576598, size.height * 0.6451706);
    path_9.cubicTo(
        size.width * 0.4539000,
        size.height * 0.6659912,
        size.width * 0.4502759,
        size.height * 0.6769941,
        size.width * 0.4461023,
        size.height * 0.6845471);
    path_9.cubicTo(
        size.width * 0.4417057,
        size.height * 0.6925000,
        size.width * 0.4362943,
        size.height * 0.6974529,
        size.width * 0.4279828,
        size.height * 0.7043765);
    path_9.lineTo(size.width * 0.4315414, size.height * 0.7323441);
    path_9.close();
    path_9.moveTo(size.width * 0.4576782, size.height * 0.6450706);
    path_9.cubicTo(
        size.width * 0.4533460,
        size.height * 0.6686000,
        size.width * 0.4489621,
        size.height * 0.6797235,
        size.width * 0.4436161,
        size.height * 0.6875706);
    path_9.cubicTo(
        size.width * 0.4376586,
        size.height * 0.6963147,
        size.width * 0.4307080,
        size.height * 0.7010265,
        size.width * 0.4197103,
        size.height * 0.7113118);
    path_9.lineTo(size.width * 0.4236552, size.height * 0.7389353);
    path_9.cubicTo(
        size.width * 0.4333471,
        size.height * 0.7298735,
        size.width * 0.4422437,
        size.height * 0.7234941,
        size.width * 0.4493356,
        size.height * 0.7130824);
    path_9.cubicTo(
        size.width * 0.4570391,
        size.height * 0.7017765,
        size.width * 0.4629080,
        size.height * 0.6856794,
        size.width * 0.4680759,
        size.height * 0.6576029);
    path_9.lineTo(size.width * 0.4576782, size.height * 0.6450706);
    path_9.close();
    path_9.moveTo(size.width * 0.4159816, size.height * 0.7232676);
    path_9.cubicTo(
        size.width * 0.4136954,
        size.height * 0.7692559,
        size.width * 0.4252644,
        size.height * 0.8055176,
        size.width * 0.4365149,
        size.height * 0.8255029);
    path_9.lineTo(size.width * 0.4430701, size.height * 0.8013412);
    path_9.cubicTo(
        size.width * 0.4334862,
        size.height * 0.7843176,
        size.width * 0.4258736,
        size.height * 0.7573588,
        size.width * 0.4273839,
        size.height * 0.7269794);
    path_9.lineTo(size.width * 0.4159816, size.height * 0.7232676);
    path_9.close();
    path_9.moveTo(size.width * 0.2684460, size.height * 0.7437735);
    path_9.cubicTo(
        size.width * 0.2778207,
        size.height * 0.8228235,
        size.width * 0.3053943,
        size.height * 0.8660235,
        size.width * 0.3349402,
        size.height * 0.8941265);
    path_9.cubicTo(
        size.width * 0.3498241,
        size.height * 0.9082853,
        size.width * 0.3656057,
        size.height * 0.9189853,
        size.width * 0.3804851,
        size.height * 0.9284676);
    path_9.cubicTo(
        size.width * 0.3954954,
        size.height * 0.9380353,
        size.width * 0.4094103,
        size.height * 0.9462588,
        size.width * 0.4211000,
        size.height * 0.9556441);
    path_9.lineTo(size.width * 0.4245414, size.height * 0.9275824);
    path_9.cubicTo(
        size.width * 0.4124172,
        size.height * 0.9178471,
        size.width * 0.3979552,
        size.height * 0.9092912,
        size.width * 0.3832621,
        size.height * 0.8999294);
    path_9.cubicTo(
        size.width * 0.3684379,
        size.height * 0.8904824,
        size.width * 0.3531862,
        size.height * 0.8801059,
        size.width * 0.3389448,
        size.height * 0.8665588);
    path_9.cubicTo(
        size.width * 0.3102402,
        size.height * 0.8392529,
        size.width * 0.2871874,
        size.height * 0.8005176,
        size.width * 0.2794448,
        size.height * 0.7352324);
    path_9.lineTo(size.width * 0.2684460, size.height * 0.7437735);
    path_9.close();
    path_9.moveTo(size.width * 0.4216000, size.height * 0.9559853);
    path_9.lineTo(size.width * 0.4771218, size.height * 0.9868676);
    path_9.lineTo(size.width * 0.4795632, size.height * 0.9581265);
    path_9.lineTo(size.width * 0.4240414, size.height * 0.9272441);
    path_9.lineTo(size.width * 0.4216000, size.height * 0.9559853);
    path_9.close();
    path_9.moveTo(size.width * 0.4772609, size.height * 0.9869412);
    path_9.cubicTo(
        size.width * 0.4868529,
        size.height * 0.9916441,
        size.width * 0.4976759,
        size.height * 0.9896971,
        size.width * 0.5065563,
        size.height * 0.9773294);
    path_9.cubicTo(
        size.width * 0.5157402,
        size.height * 0.9645412,
        size.width * 0.5223011,
        size.height * 0.9412882,
        size.width * 0.5232000,
        size.height * 0.9071324);
    path_9.lineTo(size.width * 0.5117310, size.height * 0.9051559);
    path_9.cubicTo(
        size.width * 0.5110931,
        size.height * 0.9294353,
        size.width * 0.5067333,
        size.height * 0.9436000,
        size.width * 0.5010621,
        size.height * 0.9514971);
    path_9.cubicTo(
        size.width * 0.4950862,
        size.height * 0.9598176,
        size.width * 0.4871161,
        size.height * 0.9618265,
        size.width * 0.4794241,
        size.height * 0.9580529);
    path_9.lineTo(size.width * 0.4772609, size.height * 0.9869412);
    path_9.close();
    path_9.moveTo(size.width * 0.3579138, size.height * 0.7257324);
    path_9.cubicTo(
        size.width * 0.3620092,
        size.height * 0.7209000,
        size.width * 0.3651989,
        size.height * 0.7176618,
        size.width * 0.3676506,
        size.height * 0.7156794);
    path_9.cubicTo(
        size.width * 0.3701759,
        size.height * 0.7136324,
        size.width * 0.3715770,
        size.height * 0.7132059,
        size.width * 0.3722161,
        size.height * 0.7132441);
    path_9.cubicTo(
        size.width * 0.3727713,
        size.height * 0.7132765,
        size.width * 0.3718517,
        size.height * 0.7135353,
        size.width * 0.3710391,
        size.height * 0.7108794);
    path_9.cubicTo(
        size.width * 0.3703931,
        size.height * 0.7087676,
        size.width * 0.3706230,
        size.height * 0.7073206,
        size.width * 0.3705759,
        size.height * 0.7094500);
    path_9.cubicTo(
        size.width * 0.3704747,
        size.height * 0.7140382,
        size.width * 0.3695379,
        size.height * 0.7214824,
        size.width * 0.3679885,
        size.height * 0.7331235);
    path_9.cubicTo(
        size.width * 0.3665897,
        size.height * 0.7436294,
        size.width * 0.3648437,
        size.height * 0.7566353,
        size.width * 0.3640552,
        size.height * 0.7692912);
    path_9.lineTo(size.width * 0.3754057, size.height * 0.7739235);
    path_9.cubicTo(
        size.width * 0.3760115,
        size.height * 0.7641941,
        size.width * 0.3774023,
        size.height * 0.7536265,
        size.width * 0.3788690,
        size.height * 0.7426088);
    path_9.cubicTo(
        size.width * 0.3801839,
        size.height * 0.7327265,
        size.width * 0.3818414,
        size.height * 0.7206971,
        size.width * 0.3820517,
        size.height * 0.7111000);
    path_9.cubicTo(
        size.width * 0.3821609,
        size.height * 0.7061353,
        size.width * 0.3819747,
        size.height * 0.6989147,
        size.width * 0.3800920,
        size.height * 0.6927559);
    path_9.cubicTo(
        size.width * 0.3780437,
        size.height * 0.6860559,
        size.width * 0.3750644,
        size.height * 0.6839941,
        size.width * 0.3724862,
        size.height * 0.6838412);
    path_9.cubicTo(
        size.width * 0.3699931,
        size.height * 0.6836912,
        size.width * 0.3671885,
        size.height * 0.6852029,
        size.width * 0.3641828,
        size.height * 0.6876353);
    path_9.cubicTo(
        size.width * 0.3611034,
        size.height * 0.6901294,
        size.width * 0.3574356,
        size.height * 0.6939059,
        size.width * 0.3530989,
        size.height * 0.6990265);
    path_9.lineTo(size.width * 0.3579138, size.height * 0.7257324);
    path_9.close();
    path_9.moveTo(size.width * 0.3754322, size.height * 0.7734441);
    path_9.cubicTo(
        size.width * 0.3765839,
        size.height * 0.7500559,
        size.width * 0.3786736,
        size.height * 0.7369941,
        size.width * 0.3813851,
        size.height * 0.7297588);
    path_9.cubicTo(
        size.width * 0.3838368,
        size.height * 0.7232118,
        size.width * 0.3876874,
        size.height * 0.7191559,
        size.width * 0.3949402,
        size.height * 0.7199206);
    path_9.lineTo(size.width * 0.3954115, size.height * 0.6905324);
    path_9.cubicTo(
        size.width * 0.3863632,
        size.height * 0.6895794,
        size.width * 0.3786851,
        size.height * 0.6944588,
        size.width * 0.3730862,
        size.height * 0.7094059);
    path_9.cubicTo(
        size.width * 0.3677471,
        size.height * 0.7236618,
        size.width * 0.3652655,
        size.height * 0.7446471,
        size.width * 0.3640276,
        size.height * 0.7697676);
    path_9.lineTo(size.width * 0.3754322, size.height * 0.7734441);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Colors.black.withOpacity(1.0);
    canvas..drawPath(path_9, paint_9_fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
