import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/radio/music_cubit.dart';

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
    return BlocBuilder<MusicCubit, MusicState>(
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
                    loaded: (_) {
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
  void paint(Canvas canvas, Size sizes) {
    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.4436862, size.height * 0.9520647);
    path_1.lineTo(size.width * 0.4157667, size.height * 0.9359353);
    path_1.lineTo(size.width * 0.4029494, size.height * 0.9307382);
    path_1.lineTo(size.width * 0.3737103, size.height * 0.9136794);
    path_1.lineTo(size.width * 0.3614977, size.height * 0.9060059);
    path_1.lineTo(size.width * 0.3428839, size.height * 0.8879353);
    path_1.lineTo(size.width * 0.3311448, size.height * 0.8742471);
    path_1.lineTo(size.width * 0.3219920, size.height * 0.8611294);
    path_1.lineTo(size.width * 0.3090908, size.height * 0.8369647);
    path_1.lineTo(size.width * 0.2967379, size.height * 0.8019059);
    path_1.lineTo(size.width * 0.2862920, size.height * 0.7783294);
    path_1.lineTo(size.width * 0.2034920, size.height * 0.7783853);
    path_1.lineTo(size.width * 0.1805391, size.height * 0.7768265);
    path_1.cubicTo(
        size.width * 0.09450345,
        size.height * 0.7627735,
        size.width * 0.01708414,
        size.height * 0.4837765,
        size.width * 0.01172437,
        size.height * 0.1707935);
    path_1.cubicTo(
        size.width * 0.2034448,
        size.height * 0.1604700,
        size.width * 0.3193839,
        size.height * 0.06028206,
        size.width * 0.4721172,
        size.height * 0.03421000);
    path_1.cubicTo(
        size.width * 0.5017655,
        size.height * 0.02914868,
        size.width * 0.5374460,
        size.height * 0.01403224,
        size.width * 0.5620080,
        size.height * 0.05372059);
    path_1.lineTo(size.width * 0.5786195, size.height * 0.08056382);
    path_1.cubicTo(
        size.width * 0.6829678,
        size.height * 0.2405221,
        size.width * 0.8629230,
        size.height * 0.5709529,
        size.width * 0.9764207,
        size.height * 0.6310765);
    path_1.lineTo(size.width * 0.9879149, size.height * 0.6550059);
    path_1.cubicTo(
        size.width * 0.9792632,
        size.height * 0.9422059,
        size.width * 0.7010563,
        size.height * 0.4990412,
        size.width * 0.5888356,
        size.height * 0.4900647);
    path_1
      ..cubicTo(
          size.width * 0.5945460,
          size.height * 0.5388441,
          size.width * 0.6415494,
          size.height * 0.8536147,
          size.width * 0.5989506,
          size.height * 0.8897059);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color.withOpacity(1.0);
    canvas
      ..translate(-size.width / 2, -size.height * 0.4)
      ..drawPath(path_1, paint_1_fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.5786195, size.height * 0.08056382);
    path_2.cubicTo(
        size.width * 0.7108184,
        size.height * 0.09642882,
        size.width * 0.8389310,
        size.height * 0.1273526,
        size.width * 0.9682161,
        size.height * 0.04623382);
    path_2.lineTo(size.width * 0.9818632, size.height * 0.05557588);
    path_2.cubicTo(
        size.width * 1.011032,
        size.height * 0.2925465,
        size.width * 0.7854851,
        size.height * 0.3058382,
        size.width * 0.7296805,
        size.height * 0.3198529);
    path_2.lineTo(size.width * 0.5786195, size.height * 0.08056382);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5888356, size.height * 0.4900647);
    path_3.cubicTo(
        size.width * 0.5757437,
        size.height * 0.3714853,
        size.width * 0.5501460,
        size.height * 0.1521565,
        size.width * 0.5158299,
        size.height * 0.1034791);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4973586, size.height * 0.2358324);
    path_4.cubicTo(
        size.width * 0.5300287,
        size.height * 0.3966735,
        size.width * 0.5293483,
        size.height * 0.7322882,
        size.width * 0.5387816,
        size.height * 0.9006000);
    path_4.lineTo(size.width * 0.5627943, size.height * 0.9030206);
    path_4.lineTo(size.width * 0.5802885, size.height * 0.9014765);
    path_4.lineTo(size.width * 0.6002770, size.height * 0.8884618);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2034920, size.height * 0.7783853);
    path_5.cubicTo(
        size.width * 0.2548724,
        size.height * 0.7692941,
        size.width * 0.3981494,
        size.height * 0.8083824,
        size.width * 0.3943966,
        size.height * 0.6468235);
    path_5.cubicTo(
        size.width * 0.3947034,
        size.height * 0.6846559,
        size.width * 0.3952092,
        size.height * 0.7053765,
        size.width * 0.4080759,
        size.height * 0.7192029);
    path_5.lineTo(size.width * 0.4382862, size.height * 0.7371235);
    path_5.cubicTo(
        size.width * 0.4411023,
        size.height * 0.7341412,
        size.width * 0.4437207,
        size.height * 0.7314588,
        size.width * 0.4461609,
        size.height * 0.7289324);
    path_5.cubicTo(
        size.width * 0.4621161,
        size.height * 0.7124118,
        size.width * 0.4705126,
        size.height * 0.7023500,
        size.width * 0.4773678,
        size.height * 0.6561647);
    path_5.cubicTo(
        size.width * 0.4692977,
        size.height * 0.7093382,
        size.width * 0.4583977,
        size.height * 0.7141294,
        size.width * 0.4382862,
        size.height * 0.7371235);
    path_5.cubicTo(
        size.width * 0.4374322,
        size.height * 0.7755529,
        size.width * 0.4478621,
        size.height * 0.8053735,
        size.width * 0.4587575,
        size.height * 0.8219735);

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2913000, size.height * 0.7778382);
    path_6.cubicTo(
        size.width * 0.3123115,
        size.height * 0.9187647,
        size.width * 0.3967690,
        size.height * 0.9232382,
        size.width * 0.4453218,
        size.height * 0.9528853);
    path_6.lineTo(size.width * 0.5015506, size.height * 0.9737824);
    path_6.cubicTo(
        size.width * 0.5190241,
        size.height * 0.9791529,
        size.width * 0.5388287,
        size.height * 0.9591765,
        size.width * 0.5387701,
        size.height * 0.9006059);

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.3719230, size.height * 0.7362235);
    path_7.cubicTo(
        size.width * 0.4044862,
        size.height * 0.6904853,
        size.width * 0.3892897,
        size.height * 0.7476088,
        size.width * 0.3877264,
        size.height * 0.7927676);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3877264, size.height * 0.7927676);
    path_8.cubicTo(
        size.width * 0.3887874,
        size.height * 0.7439471,
        size.width * 0.3949920,
        size.height * 0.7232059,
        size.width * 0.4113011,
        size.height * 0.7220059);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4423069, size.height * 0.9474853);
    path_9.lineTo(size.width * 0.4400529, size.height * 0.9339559);
    path_9.lineTo(size.width * 0.4220770, size.height * 0.9535735);
    path_9.lineTo(size.width * 0.4413402, size.height * 0.9619824);
    path_9.lineTo(size.width * 0.4423069, size.height * 0.9474853);
    path_9.close();
    path_9.moveTo(size.width * 0.4993793, size.height * 0.9723941);
    path_9.lineTo(size.width * 0.4984126, size.height * 0.9868912);
    path_9.lineTo(size.width * 0.4991724, size.height * 0.9872235);
    path_9.lineTo(size.width * 0.4999402, size.height * 0.9870324);
    path_9.lineTo(size.width * 0.4993793, size.height * 0.9723941);
    path_9.close();
    path_9.moveTo(size.width * 0.5241931, size.height * 0.9661676);
    path_9.lineTo(size.width * 0.5247540, size.height * 0.9808029);
    path_9.lineTo(size.width * 0.5273713, size.height * 0.9801471);
    path_9.lineTo(size.width * 0.5288885, size.height * 0.9746471);
    path_9.lineTo(size.width * 0.5241931, size.height * 0.9661676);
    path_9.close();
    path_9.moveTo(size.width * 0.5353598, size.height * 0.9256882);
    path_9.lineTo(size.width * 0.5400552, size.height * 0.9341676);
    path_9.lineTo(size.width * 0.5416034, size.height * 0.9285529);
    path_9.lineTo(size.width * 0.5409138, size.height * 0.9219088);
    path_9.lineTo(size.width * 0.5353598, size.height * 0.9256882);
    path_9.close();
    path_9.moveTo(size.width * 0.5279149, size.height * 0.8540706);
    path_9.lineTo(size.width * 0.5334690, size.height * 0.8502912);
    path_9.lineTo(size.width * 0.5317632, size.height * 0.8338824);
    path_9.lineTo(size.width * 0.5256609, size.height * 0.8405412);
    path_9.lineTo(size.width * 0.5279149, size.height * 0.8540706);
    path_9.close();
    path_9.moveTo(size.width * 0.4424207, size.height * 0.9664088);
    path_9.cubicTo(
        size.width * 0.4455161,
        size.height * 0.9681971,
        size.width * 0.4485931,
        size.height * 0.9632265,
        size.width * 0.4492920,
        size.height * 0.9553029);
    path_9.cubicTo(
        size.width * 0.4499908,
        size.height * 0.9473794,
        size.width * 0.4480483,
        size.height * 0.9395088,
        size.width * 0.4449517,
        size.height * 0.9377206);
    path_9.lineTo(size.width * 0.4424207, size.height * 0.9664088);
    path_9.close();
    path_9.moveTo(size.width * 0.4157667, size.height * 0.9359353);
    path_9.lineTo(size.width * 0.4170322, size.height * 0.9215912);
    path_9.cubicTo(
        size.width * 0.4169103,
        size.height * 0.9215206,
        size.width * 0.4167885,
        size.height * 0.9214588,
        size.width * 0.4166655,
        size.height * 0.9214088);
    path_9.lineTo(size.width * 0.4157667, size.height * 0.9359353);
    path_9.close();
    path_9.moveTo(size.width * 0.4029494, size.height * 0.9307382);
    path_9.lineTo(size.width * 0.4016713, size.height * 0.9450765);
    path_9.cubicTo(
        size.width * 0.4017966,
        size.height * 0.9451500,
        size.width * 0.4019230,
        size.height * 0.9452118,
        size.width * 0.4020494,
        size.height * 0.9452647);
    path_9.lineTo(size.width * 0.4029494, size.height * 0.9307382);
    path_9.close();
    path_9.moveTo(size.width * 0.3737103, size.height * 0.9136794);
    path_9.lineTo(size.width * 0.3723402, size.height * 0.9279618);
    path_9.lineTo(size.width * 0.3724333, size.height * 0.9280176);
    path_9.lineTo(size.width * 0.3737103, size.height * 0.9136794);
    path_9.close();
    path_9.moveTo(size.width * 0.3614977, size.height * 0.9060059);
    path_9.lineTo(size.width * 0.3594598, size.height * 0.9197559);
    path_9.cubicTo(
        size.width * 0.3596782,
        size.height * 0.9199676,
        size.width * 0.3599011,
        size.height * 0.9201441,
        size.width * 0.3601276,
        size.height * 0.9202882);
    path_9.lineTo(size.width * 0.3614977, size.height * 0.9060059);
    path_9.close();
    path_9.moveTo(size.width * 0.3428839, size.height * 0.8879353);
    path_9.lineTo(size.width * 0.3405000, size.height * 0.9013176);
    path_9.cubicTo(
        size.width * 0.3406138,
        size.height * 0.9014500,
        size.width * 0.3407287,
        size.height * 0.9015706,
        size.width * 0.3408448,
        size.height * 0.9016853);
    path_9.lineTo(size.width * 0.3428839, size.height * 0.8879353);
    path_9.close();
    path_9.moveTo(size.width * 0.3311448, size.height * 0.8742471);
    path_9.lineTo(size.width * 0.3283368, size.height * 0.8870765);
    path_9.cubicTo(
        size.width * 0.3284747,
        size.height * 0.8872765,
        size.width * 0.3286172,
        size.height * 0.8874588,
        size.width * 0.3287609,
        size.height * 0.8876294);
    path_9.lineTo(size.width * 0.3311448, size.height * 0.8742471);
    path_9.close();
    path_9.moveTo(size.width * 0.3219920, size.height * 0.8611294);
    path_9.lineTo(size.width * 0.3185977, size.height * 0.8729971);
    path_9.cubicTo(
        size.width * 0.3187851,
        size.height * 0.8733500,
        size.width * 0.3189805,
        size.height * 0.8736706,
        size.width * 0.3191839,
        size.height * 0.8739618);
    path_9.lineTo(size.width * 0.3219920, size.height * 0.8611294);
    path_9.close();
    path_9.moveTo(size.width * 0.3090908, size.height * 0.8369647);
    path_9.lineTo(size.width * 0.3048218, size.height * 0.8468118);
    path_9.cubicTo(
        size.width * 0.3050862,
        size.height * 0.8475618,
        size.width * 0.3053782,
        size.height * 0.8482382,
        size.width * 0.3056966,
        size.height * 0.8488324);
    path_9.lineTo(size.width * 0.3090908, size.height * 0.8369647);
    path_9.close();
    path_9.moveTo(size.width * 0.2967379, size.height * 0.8019059);
    path_9.lineTo(size.width * 0.3010057, size.height * 0.7920588);
    path_9.cubicTo(
        size.width * 0.3008598,
        size.height * 0.7916441,
        size.width * 0.3007034,
        size.height * 0.7912500,
        size.width * 0.3005402,
        size.height * 0.7908794);
    path_9.lineTo(size.width * 0.2967379, size.height * 0.8019059);
    path_9.close();
    path_9.moveTo(size.width * 0.2862920, size.height * 0.7783294);
    path_9.lineTo(size.width * 0.2900943, size.height * 0.7673000);
    path_9.cubicTo(
        size.width * 0.2890437,
        size.height * 0.7649294,
        size.width * 0.2876920,
        size.height * 0.7636206,
        size.width * 0.2862908,
        size.height * 0.7636235);
    path_9.lineTo(size.width * 0.2862920, size.height * 0.7783294);
    path_9.close();
    path_9.moveTo(size.width * 0.2034920, size.height * 0.7783853);
    path_9.lineTo(size.width * 0.2033391, size.height * 0.7930912);
    path_9.lineTo(size.width * 0.2034931, size.height * 0.7930912);
    path_9.lineTo(size.width * 0.2034920, size.height * 0.7783853);
    path_9.close();
    path_9.moveTo(size.width * 0.1805391, size.height * 0.7768265);
    path_9.lineTo(size.width * 0.1801724, size.height * 0.7915029);
    path_9.cubicTo(
        size.width * 0.1802437,
        size.height * 0.7915147,
        size.width * 0.1803149,
        size.height * 0.7915235,
        size.width * 0.1803862,
        size.height * 0.7915265);
    path_9.lineTo(size.width * 0.1805391, size.height * 0.7768265);
    path_9.close();
    path_9.moveTo(size.width * 0.01172437, size.height * 0.1707935);
    path_9.lineTo(size.width * 0.01160345, size.height * 0.1560912);
    path_9.cubicTo(
        size.width * 0.01005689,
        size.height * 0.1561744,
        size.width * 0.008588747,
        size.height * 0.1578494,
        size.width * 0.007530954,
        size.height * 0.1607376);
    path_9.cubicTo(
        size.width * 0.006473161,
        size.height * 0.1636256,
        size.width * 0.005915023,
        size.height * 0.1674829,
        size.width * 0.005982747,
        size.height * 0.1714374);
    path_9.lineTo(size.width * 0.01172437, size.height * 0.1707935);
    path_9.close();
    path_9.moveTo(size.width * 0.4721172, size.height * 0.03421000);
    path_9.lineTo(size.width * 0.4724989, size.height * 0.04888324);
    path_9.lineTo(size.width * 0.4724989, size.height * 0.04888324);
    path_9.lineTo(size.width * 0.4721172, size.height * 0.03421000);
    path_9.close();
    path_9.moveTo(size.width * 0.5620080, size.height * 0.05372059);
    path_9.lineTo(size.width * 0.5650770, size.height * 0.04128647);
    path_9.lineTo(size.width * 0.5650770, size.height * 0.04128647);
    path_9.lineTo(size.width * 0.5620080, size.height * 0.05372059);
    path_9.close();
    path_9.moveTo(size.width * 0.5786195, size.height * 0.08056382);
    path_9.lineTo(size.width * 0.5755517, size.height * 0.09299853);
    path_9.lineTo(size.width * 0.5755954, size.height * 0.09306765);
    path_9.lineTo(size.width * 0.5786195, size.height * 0.08056382);
    path_9.close();
    path_9.moveTo(size.width * 0.9764207, size.height * 0.6310765);
    path_9.lineTo(size.width * 0.9800483, size.height * 0.6196706);
    path_9.cubicTo(
        size.width * 0.9793333,
        size.height * 0.6181794,
        size.width * 0.9784885,
        size.height * 0.6171529,
        size.width * 0.9775862,
        size.height * 0.6166765);
    path_9.lineTo(size.width * 0.9764207, size.height * 0.6310765);
    path_9.close();
    path_9.moveTo(size.width * 0.9879149, size.height * 0.6550059);
    path_9.lineTo(size.width * 0.9936448, size.height * 0.6561382);
    path_9.cubicTo(
        size.width * 0.9937897,
        size.height * 0.6513294,
        size.width * 0.9930046,
        size.height * 0.6466441,
        size.width * 0.9915425,
        size.height * 0.6436000);
    path_9.lineTo(size.width * 0.9879149, size.height * 0.6550059);
    path_9.close();
    path_9.moveTo(size.width * 0.5888356, size.height * 0.4900647);
    path_9.lineTo(size.width * 0.5833046, size.height * 0.4940618);
    path_9.lineTo(size.width * 0.5833299, size.height * 0.4942824);
    path_9.lineTo(size.width * 0.5888356, size.height * 0.4900647);
    path_9.close();
    path_9.moveTo(size.width * 0.5971437, size.height * 0.8757441);
    path_9.cubicTo(
        size.width * 0.5941310,
        size.height * 0.8782971,
        size.width * 0.5924966,
        size.height * 0.8866176,
        size.width * 0.5934943,
        size.height * 0.8943294);
    path_9.cubicTo(
        size.width * 0.5944920,
        size.height * 0.9020382,
        size.width * 0.5977437,
        size.height * 0.9062176,
        size.width * 0.6007563,
        size.height * 0.9036676);
    path_9.lineTo(size.width * 0.5971437, size.height * 0.8757441);
    path_9.close();
    path_9.moveTo(size.width * 0.9682161, size.height * 0.04623382);
    path_9.lineTo(size.width * 0.9697011, size.height * 0.03202765);
    path_9.cubicTo(
        size.width * 0.9687678,
        size.height * 0.03138853,
        size.width * 0.9677862,
        size.height * 0.03136206,
        size.width * 0.9668471,
        size.height * 0.03195118);
    path_9.lineTo(size.width * 0.9682161, size.height * 0.04623382);
    path_9.close();
    path_9.moveTo(size.width * 0.9818632, size.height * 0.05557588);
    path_9.lineTo(size.width * 0.9873448, size.height * 0.05115824);
    path_9.cubicTo(
        size.width * 0.9867540,
        size.height * 0.04636147,
        size.width * 0.9852471,
        size.height * 0.04266941,
        size.width * 0.9833483,
        size.height * 0.04136971);
    path_9.lineTo(size.width * 0.9818632, size.height * 0.05557588);
    path_9.close();
    path_9.moveTo(size.width * 0.7296805, size.height * 0.3198529);
    path_9.lineTo(size.width * 0.7266552, size.height * 0.3323559);
    path_9.cubicTo(
        size.width * 0.7277264,
        size.height * 0.3340529,
        size.width * 0.7289874,
        size.height * 0.3348029,
        size.width * 0.7302414,
        size.height * 0.3344882);
    path_9.lineTo(size.width * 0.7296805, size.height * 0.3198529);
    path_9.close();
    path_9.moveTo(size.width * 0.5186172, size.height * 0.09061735);
    path_9.cubicTo(
        size.width * 0.5158402,
        size.height * 0.08667941,
        size.width * 0.5123425,
        size.height * 0.08924559,
        size.width * 0.5108034,
        size.height * 0.09634882);
    path_9.cubicTo(
        size.width * 0.5092644,
        size.height * 0.1034524,
        size.width * 0.5102678,
        size.height * 0.1124029,
        size.width * 0.5130437,
        size.height * 0.1163409);
    path_9.lineTo(size.width * 0.5186172, size.height * 0.09061735);
    path_9.close();
    path_9.moveTo(size.width * 0.5024586, size.height * 0.2290503);
    path_9.cubicTo(
        size.width * 0.5009943,
        size.height * 0.2218438,
        size.width * 0.4975253,
        size.height * 0.2190382,
        size.width * 0.4947080,
        size.height * 0.2227838);
    path_9.cubicTo(
        size.width * 0.4918920,
        size.height * 0.2265294,
        size.width * 0.4907954,
        size.height * 0.2354079,
        size.width * 0.4922598,
        size.height * 0.2426144);
    path_9.lineTo(size.width * 0.5024586, size.height * 0.2290503);
    path_9.close();
    path_9.moveTo(size.width * 0.5387816, size.height * 0.9006000);
    path_9.lineTo(size.width * 0.5330931, size.height * 0.9026882);
    path_9.cubicTo(
        size.width * 0.5334862,
        size.height * 0.9097147,
        size.width * 0.5357839,
        size.height * 0.9150176,
        size.width * 0.5385552,
        size.height * 0.9152971);
    path_9.lineTo(size.width * 0.5387816, size.height * 0.9006000);
    path_9.close();
    path_9.moveTo(size.width * 0.5627943, size.height * 0.9030206);
    path_9.lineTo(size.width * 0.5625678, size.height * 0.9177147);
    path_9.cubicTo(
        size.width * 0.5627092,
        size.height * 0.9177294,
        size.width * 0.5628506,
        size.height * 0.9177294,
        size.width * 0.5629920,
        size.height * 0.9177176);
    path_9.lineTo(size.width * 0.5627943, size.height * 0.9030206);
    path_9.close();
    path_9.moveTo(size.width * 0.5802885, size.height * 0.9014765);
    path_9.lineTo(size.width * 0.5804862, size.height * 0.9161735);
    path_9.cubicTo(
        size.width * 0.5808977,
        size.height * 0.9161382,
        size.width * 0.5813069,
        size.height * 0.9159882,
        size.width * 0.5817057,
        size.height * 0.9157294);
    path_9.lineTo(size.width * 0.5802885, size.height * 0.9014765);
    path_9.close();
    path_9.moveTo(size.width * 0.6016943, size.height * 0.9027147);
    path_9.cubicTo(
        size.width * 0.6047701,
        size.height * 0.9007118,
        size.width * 0.6066287,
        size.height * 0.8927088,
        size.width * 0.6058460,
        size.height * 0.8848353);
    path_9.cubicTo(
        size.width * 0.6050632,
        size.height * 0.8769647,
        size.width * 0.6019356,
        size.height * 0.8722088,
        size.width * 0.5988598,
        size.height * 0.8742118);
    path_9.lineTo(size.width * 0.6016943, size.height * 0.9027147);
    path_9.close();
    path_9.moveTo(size.width * 0.3943966, size.height * 0.6468235);
    path_9.lineTo(size.width * 0.4001333, size.height * 0.6459500);
    path_9.cubicTo(
        size.width * 0.3999483,
        size.height * 0.6379529,
        size.width * 0.3972943,
        size.height * 0.6318088,
        size.width * 0.3941667,
        size.height * 0.6321294);
    path_9.cubicTo(
        size.width * 0.3910379,
        size.height * 0.6324500,
        size.width * 0.3885851,
        size.height * 0.6391206,
        size.width * 0.3886506,
        size.height * 0.6471294);
    path_9.lineTo(size.width * 0.3943966, size.height * 0.6468235);
    path_9.close();
    path_9.moveTo(size.width * 0.4080759, size.height * 0.7192029);
    path_9.lineTo(size.width * 0.4058506, size.height * 0.7327618);
    path_9.cubicTo(
        size.width * 0.4061506,
        size.height * 0.7330853,
        size.width * 0.4064609,
        size.height * 0.7333412,
        size.width * 0.4067782,
        size.height * 0.7335294);
    path_9.lineTo(size.width * 0.4080759, size.height * 0.7192029);
    path_9.close();
    path_9.moveTo(size.width * 0.4461609, size.height * 0.7289324);
    path_9.lineTo(size.width * 0.4483161, size.height * 0.7425647);
    path_9.lineTo(size.width * 0.4483172, size.height * 0.7425647);
    path_9.lineTo(size.width * 0.4461609, size.height * 0.7289324);
    path_9.close();
    path_9.moveTo(size.width * 0.4773678, size.height * 0.6561647);
    path_9.lineTo(size.width * 0.4827414, size.height * 0.6613853);
    path_9.cubicTo(
        size.width * 0.4838644,
        size.height * 0.6538118,
        size.width * 0.4823839,
        size.height * 0.6453412,
        size.width * 0.4794287,
        size.height * 0.6424353);
    path_9.cubicTo(
        size.width * 0.4764736,
        size.height * 0.6395324,
        size.width * 0.4731575,
        size.height * 0.6432882,
        size.width * 0.4720103,
        size.height * 0.6508412);
    path_9.lineTo(size.width * 0.4773678, size.height * 0.6561647);
    path_9.close();
    path_9.moveTo(size.width * 0.4558172, size.height * 0.8346118);
    path_9.cubicTo(
        size.width * 0.4585448,
        size.height * 0.8387647,
        size.width * 0.4620724,
        size.height * 0.8364765,
        size.width * 0.4636966,
        size.height * 0.8295000);
    path_9.cubicTo(
        size.width * 0.4653195,
        size.height * 0.8225206,
        size.width * 0.4644253,
        size.height * 0.8134941,
        size.width * 0.4616989,
        size.height * 0.8093382);
    path_9.lineTo(size.width * 0.4558172, size.height * 0.8346118);
    path_9.close();
    path_9.moveTo(size.width * 0.2966701, size.height * 0.7725971);
    path_9.cubicTo(
        size.width * 0.2955379,
        size.height * 0.7650088,
        size.width * 0.2922172,
        size.height * 0.7612029,
        size.width * 0.2892517,
        size.height * 0.7641000);
    path_9.cubicTo(
        size.width * 0.2862862,
        size.height * 0.7669941,
        size.width * 0.2847989,
        size.height * 0.7754941,
        size.width * 0.2859310,
        size.height * 0.7830824);
    path_9.lineTo(size.width * 0.2966701, size.height * 0.7725971);
    path_9.close();
    path_9.moveTo(size.width * 0.4453218, size.height * 0.9528853);
    path_9.lineTo(size.width * 0.4439885, size.height * 0.9671882);
    path_9.cubicTo(
        size.width * 0.4441563,
        size.height * 0.9672912,
        size.width * 0.4443253,
        size.height * 0.9673735,
        size.width * 0.4444966,
        size.height * 0.9674382);
    path_9.lineTo(size.width * 0.4453218, size.height * 0.9528853);
    path_9.close();
    path_9.moveTo(size.width * 0.5015506, size.height * 0.9737824);
    path_9.lineTo(size.width * 0.5007241, size.height * 0.9883382);
    path_9.lineTo(size.width * 0.5008655, size.height * 0.9883824);
    path_9.lineTo(size.width * 0.5015506, size.height * 0.9737824);
    path_9.close();
    path_9.moveTo(size.width * 0.5445172, size.height * 0.9005676);
    path_9.cubicTo(
        size.width * 0.5445092,
        size.height * 0.8924471,
        size.width * 0.5419287,
        size.height * 0.8858794,
        size.width * 0.5387552,
        size.height * 0.8859000);
    path_9.cubicTo(
        size.width * 0.5355816,
        size.height * 0.8859206,
        size.width * 0.5330149,
        size.height * 0.8925206,
        size.width * 0.5330230,
        size.height * 0.9006441);
    path_9.lineTo(size.width * 0.5445172, size.height * 0.9005676);
    path_9.close();
    path_9.moveTo(size.width * 0.3691575, size.height * 0.7233324);
    path_9.cubicTo(
        size.width * 0.3663747,
        size.height * 0.7272412,
        size.width * 0.3653575,
        size.height * 0.7361794,
        size.width * 0.3668851,
        size.height * 0.7433000);
    path_9.cubicTo(
        size.width * 0.3684126,
        size.height * 0.7504206,
        size.width * 0.3719057,
        size.height * 0.7530235,
        size.width * 0.3746885,
        size.height * 0.7491147);
    path_9.lineTo(size.width * 0.3691575, size.height * 0.7233324);
    path_9.close();
    path_9.moveTo(size.width * 0.3877264, size.height * 0.7927676);
    path_9.lineTo(size.width * 0.3819885, size.height * 0.7919500);
    path_9.cubicTo(
        size.width * 0.3818138,
        size.height * 0.7999676,
        size.width * 0.3841839,
        size.height * 0.8068588,
        size.width * 0.3873138,
        size.height * 0.8074353);
    path_9.cubicTo(
        size.width * 0.3904425,
        size.height * 0.8080118,
        size.width * 0.3931747,
        size.height * 0.8020618,
        size.width * 0.3934517,
        size.height * 0.7940647);
    path_9.lineTo(size.width * 0.3877264, size.height * 0.7927676);
    path_9.close();
    path_9.moveTo(size.width * 0.4114655, size.height * 0.7367059);
    path_9.cubicTo(
        size.width * 0.4146391,
        size.height * 0.7364735,
        size.width * 0.4171368,
        size.height * 0.7297029,
        size.width * 0.4170460,
        size.height * 0.7215824);
    path_9.cubicTo(
        size.width * 0.4169540,
        size.height * 0.7134647,
        size.width * 0.4143080,
        size.height * 0.7070735,
        size.width * 0.4111356,
        size.height * 0.7073059);
    path_9.lineTo(size.width * 0.4114655, size.height * 0.7367059);
    path_9.close();
    path_9.moveTo(size.width * 0.4413402, size.height * 0.9619824);
    path_9.lineTo(size.width * 0.4984126, size.height * 0.9868912);
    path_9.lineTo(size.width * 0.5003460, size.height * 0.9579000);
    path_9.lineTo(size.width * 0.4432736, size.height * 0.9329882);
    path_9.lineTo(size.width * 0.4413402, size.height * 0.9619824);
    path_9.close();
    path_9.moveTo(size.width * 0.4999402, size.height * 0.9870324);
    path_9.lineTo(size.width * 0.5247540, size.height * 0.9808029);
    path_9.lineTo(size.width * 0.5236322, size.height * 0.9515324);
    path_9.lineTo(size.width * 0.4988184, size.height * 0.9577588);
    path_9.lineTo(size.width * 0.4999402, size.height * 0.9870324);
    path_9.close();
    path_9.moveTo(size.width * 0.5288885, size.height * 0.9746471);
    path_9.lineTo(size.width * 0.5400552, size.height * 0.9341676);
    path_9.lineTo(size.width * 0.5306644, size.height * 0.9172088);
    path_9.lineTo(size.width * 0.5194977, size.height * 0.9576882);
    path_9.lineTo(size.width * 0.5288885, size.height * 0.9746471);
    path_9.close();
    path_9.moveTo(size.width * 0.5409138, size.height * 0.9219088);
    path_9.lineTo(size.width * 0.5334690, size.height * 0.8502912);
    path_9.lineTo(size.width * 0.5223609, size.height * 0.8578500);
    path_9.lineTo(size.width * 0.5298057, size.height * 0.9294676);
    path_9.lineTo(size.width * 0.5409138, size.height * 0.9219088);
    path_9.close();
    path_9.moveTo(size.width * 0.5256609, size.height * 0.8405412);
    path_9.lineTo(size.width * 0.4400529, size.height * 0.9339559);
    path_9.lineTo(size.width * 0.4445609, size.height * 0.9610118);
    path_9.lineTo(size.width * 0.5301690, size.height * 0.8675971);
    path_9.lineTo(size.width * 0.5256609, size.height * 0.8405412);
    path_9.close();
    path_9.moveTo(size.width * 0.4449517, size.height * 0.9377206);
    path_9.lineTo(size.width * 0.4170322, size.height * 0.9215912);
    path_9.lineTo(size.width * 0.4145000, size.height * 0.9502794);
    path_9.lineTo(size.width * 0.4424207, size.height * 0.9664088);
    path_9.lineTo(size.width * 0.4449517, size.height * 0.9377206);
    path_9.close();
    path_9.moveTo(size.width * 0.4166655, size.height * 0.9214088);
    path_9.lineTo(size.width * 0.4038483, size.height * 0.9162147);
    path_9.lineTo(size.width * 0.4020494, size.height * 0.9452647);
    path_9.lineTo(size.width * 0.4148667, size.height * 0.9504588);
    path_9.lineTo(size.width * 0.4166655, size.height * 0.9214088);
    path_9.close();
    path_9.moveTo(size.width * 0.4042264, size.height * 0.9164029);
    path_9.lineTo(size.width * 0.3749885, size.height * 0.8993412);
    path_9.lineTo(size.width * 0.3724333, size.height * 0.9280176);
    path_9.lineTo(size.width * 0.4016713, size.height * 0.9450765);
    path_9.lineTo(size.width * 0.4042264, size.height * 0.9164029);
    path_9.close();
    path_9.moveTo(size.width * 0.3750816, size.height * 0.8993971);
    path_9.lineTo(size.width * 0.3628690, size.height * 0.8917235);
    path_9.lineTo(size.width * 0.3601276, size.height * 0.9202882);
    path_9.lineTo(size.width * 0.3723402, size.height * 0.9279618);
    path_9.lineTo(size.width * 0.3750816, size.height * 0.8993971);
    path_9.close();
    path_9.moveTo(size.width * 0.3635368, size.height * 0.8922559);
    path_9.lineTo(size.width * 0.3449218, size.height * 0.8741853);
    path_9.lineTo(size.width * 0.3408448, size.height * 0.9016853);
    path_9.lineTo(size.width * 0.3594598, size.height * 0.9197559);
    path_9.lineTo(size.width * 0.3635368, size.height * 0.8922559);
    path_9.close();
    path_9.moveTo(size.width * 0.3452667, size.height * 0.8745529);
    path_9.lineTo(size.width * 0.3335276, size.height * 0.8608647);
    path_9.lineTo(size.width * 0.3287609, size.height * 0.8876294);
    path_9.lineTo(size.width * 0.3405000, size.height * 0.9013176);
    path_9.lineTo(size.width * 0.3452667, size.height * 0.8745529);
    path_9.close();
    path_9.moveTo(size.width * 0.3339529, size.height * 0.8614147);
    path_9.lineTo(size.width * 0.3248000, size.height * 0.8483000);
    path_9.lineTo(size.width * 0.3191839, size.height * 0.8739618);
    path_9.lineTo(size.width * 0.3283368, size.height * 0.8870765);
    path_9.lineTo(size.width * 0.3339529, size.height * 0.8614147);
    path_9.close();
    path_9.moveTo(size.width * 0.3253862, size.height * 0.8492647);
    path_9.lineTo(size.width * 0.3124851, size.height * 0.8251000);
    path_9.lineTo(size.width * 0.3056966, size.height * 0.8488324);
    path_9.lineTo(size.width * 0.3185977, size.height * 0.8729971);
    path_9.lineTo(size.width * 0.3253862, size.height * 0.8492647);
    path_9.close();
    path_9.moveTo(size.width * 0.3133586, size.height * 0.8271176);
    path_9.lineTo(size.width * 0.3010057, size.height * 0.7920588);
    path_9.lineTo(size.width * 0.2924690, size.height * 0.8117559);
    path_9.lineTo(size.width * 0.3048218, size.height * 0.8468118);
    path_9.lineTo(size.width * 0.3133586, size.height * 0.8271176);
    path_9.close();
    path_9.moveTo(size.width * 0.3005402, size.height * 0.7908794);
    path_9.lineTo(size.width * 0.2900943, size.height * 0.7673000);
    path_9.lineTo(size.width * 0.2824908, size.height * 0.7893559);
    path_9.lineTo(size.width * 0.2929356, size.height * 0.8129353);
    path_9.lineTo(size.width * 0.3005402, size.height * 0.7908794);
    path_9.close();
    path_9.moveTo(size.width * 0.2862908, size.height * 0.7636235);
    path_9.lineTo(size.width * 0.2034897, size.height * 0.7636794);
    path_9.lineTo(size.width * 0.2034931, size.height * 0.7930912);
    path_9.lineTo(size.width * 0.2862943, size.height * 0.7930353);
    path_9.lineTo(size.width * 0.2862908, size.height * 0.7636235);
    path_9.close();
    path_9.moveTo(size.width * 0.2036437, size.height * 0.7636824);
    path_9.lineTo(size.width * 0.1806908, size.height * 0.7621265);
    path_9.lineTo(size.width * 0.1803862, size.height * 0.7915265);
    path_9.lineTo(size.width * 0.2033391, size.height * 0.7930853);
    path_9.lineTo(size.width * 0.2036437, size.height * 0.7636824);
    path_9.close();
    path_9.moveTo(size.width * 0.1809046, size.height * 0.7621500);
    path_9.cubicTo(
        size.width * 0.1402207,
        size.height * 0.7555059,
        size.width * 0.1007514,
        size.height * 0.6858971,
        size.width * 0.07056011,
        size.height * 0.5773794);
    path_9.cubicTo(
        size.width * 0.04043966,
        size.height * 0.4691206,
        size.width * 0.02009851,
        size.height * 0.3238765,
        size.width * 0.01746598,
        size.height * 0.1701500);
    path_9.lineTo(size.width * 0.005982747, size.height * 0.1714374);
    path_9.cubicTo(
        size.width * 0.008710011,
        size.height * 0.3306941,
        size.width * 0.02975839,
        size.height * 0.4814412,
        size.width * 0.06119632,
        size.height * 0.5944382);
    path_9.cubicTo(
        size.width * 0.09256356,
        size.height * 0.7071794,
        size.width * 0.1348218,
        size.height * 0.7840971,
        size.width * 0.1801724,
        size.height * 0.7915029);
    path_9.lineTo(size.width * 0.1809046, size.height * 0.7621500);
    path_9.close();
    path_9.moveTo(size.width * 0.01184529, size.height * 0.1854962);
    path_9.cubicTo(
        size.width * 0.1080952,
        size.height * 0.1803135,
        size.width * 0.1853115,
        size.height * 0.1525647,
        size.width * 0.2574517,
        size.height * 0.1229274);
    path_9.cubicTo(
        size.width * 0.3296471,
        size.height * 0.09326765,
        size.width * 0.3964713,
        size.height * 0.06186147,
        size.width * 0.4724989,
        size.height * 0.04888324);
    path_9.lineTo(size.width * 0.4717345, size.height * 0.01953665);
    path_9.cubicTo(
        size.width * 0.3950299,
        size.height * 0.03263029,
        size.width * 0.3275172,
        size.height * 0.06435441,
        size.width * 0.2556299,
        size.height * 0.09388765);
    path_9.cubicTo(
        size.width * 0.1836885,
        size.height * 0.1234432,
        size.width * 0.1070745,
        size.height * 0.1509503,
        size.width * 0.01160345,
        size.height * 0.1560912);
    path_9.lineTo(size.width * 0.01184529, size.height * 0.1854962);
    path_9.close();
    path_9.moveTo(size.width * 0.4724989, size.height * 0.04888324);
    path_9.cubicTo(
        size.width * 0.4877575,
        size.height * 0.04627853,
        size.width * 0.5034966,
        size.height * 0.04135000,
        size.width * 0.5188908,
        size.height * 0.04188853);
    path_9.cubicTo(
        size.width * 0.5341747,
        size.height * 0.04242353,
        size.width * 0.5479770,
        size.height * 0.04844147,
        size.width * 0.5589402,
        size.height * 0.06615500);
    path_9.lineTo(size.width * 0.5650770, size.height * 0.04128647);
    path_9.cubicTo(
        size.width * 0.5514770,
        size.height * 0.01931153,
        size.width * 0.5351575,
        size.height * 0.01304338,
        size.width * 0.5190483,
        size.height * 0.01247965);
    path_9.cubicTo(
        size.width * 0.5030506,
        size.height * 0.01191979,
        size.width * 0.4861241,
        size.height * 0.01708009,
        size.width * 0.4717345,
        size.height * 0.01953665);
    path_9.lineTo(size.width * 0.4724989, size.height * 0.04888324);
    path_9.close();
    path_9.moveTo(size.width * 0.5589391, size.height * 0.06615471);
    path_9.lineTo(size.width * 0.5755517, size.height * 0.09299794);
    path_9.lineTo(size.width * 0.5816885, size.height * 0.06812971);
    path_9.lineTo(size.width * 0.5650770, size.height * 0.04128647);
    path_9.lineTo(size.width * 0.5589391, size.height * 0.06615471);
    path_9.close();
    path_9.moveTo(size.width * 0.5756667, size.height * 0.09317912);
    path_9.cubicTo(
        size.width * 0.6016655,
        size.height * 0.1330332,
        size.width * 0.6323897,
        size.height * 0.1835324,
        size.width * 0.6657460,
        size.height * 0.2380053);
    path_9.cubicTo(
        size.width * 0.6990644,
        size.height * 0.2924174,
        size.width * 0.7349540,
        size.height * 0.3507059,
        size.width * 0.7711471,
        size.height * 0.4058912);
    path_9.cubicTo(
        size.width * 0.8433230,
        size.height * 0.5159412,
        size.width * 0.9174448,
        size.height * 0.6148529,
        size.width * 0.9752552,
        size.height * 0.6454765);
    path_9.lineTo(size.width * 0.9775862, size.height * 0.6166765);
    path_9.cubicTo(
        size.width * 0.9218989,
        size.height * 0.5871765,
        size.width * 0.8492943,
        size.height * 0.4908088,
        size.width * 0.7770310,
        size.height * 0.3806235);
    path_9.cubicTo(
        size.width * 0.7410046,
        size.height * 0.3256941,
        size.width * 0.7052471,
        size.height * 0.2676232,
        size.width * 0.6719287,
        size.height * 0.2132126);
    path_9.cubicTo(
        size.width * 0.6386494,
        size.height * 0.1588626,
        size.width * 0.6077483,
        size.height * 0.1080735,
        size.width * 0.5815736,
        size.height * 0.06794853);
    path_9.lineTo(size.width * 0.5756667, size.height * 0.09317912);
    path_9.close();
    path_9.moveTo(size.width * 0.9727931, size.height * 0.6424824);
    path_9.lineTo(size.width * 0.9842874, size.height * 0.6664147);
    path_9.lineTo(size.width * 0.9915425, size.height * 0.6436000);
    path_9.lineTo(size.width * 0.9800483, size.height * 0.6196706);
    path_9.lineTo(size.width * 0.9727931, size.height * 0.6424824);
    path_9.close();
    path_9.moveTo(size.width * 0.9821851, size.height * 0.6538765);
    path_9.cubicTo(
        size.width * 0.9812069,
        size.height * 0.6863176,
        size.width * 0.9765644,
        size.height * 0.7063265,
        size.width * 0.9696115,
        size.height * 0.7186588);
    path_9.cubicTo(
        size.width * 0.9623770,
        size.height * 0.7314912,
        size.width * 0.9517701,
        size.height * 0.7375794,
        size.width * 0.9377908,
        size.height * 0.7369559);
    path_9.cubicTo(
        size.width * 0.9097782,
        size.height * 0.7357029,
        size.width * 0.8714931,
        size.height * 0.7077735,
        size.width * 0.8291161,
        size.height * 0.6697235);
    path_9.cubicTo(
        size.width * 0.8080322,
        size.height * 0.6507941,
        size.width * 0.7861253,
        size.height * 0.6295441,
        size.width * 0.7641851,
        size.height * 0.6081794);
    path_9.cubicTo(
        size.width * 0.7422713,
        size.height * 0.5868412,
        size.width * 0.7203172,
        size.height * 0.5653824,
        size.width * 0.6992483,
        size.height * 0.5461588);
    path_9.cubicTo(
        size.width * 0.6573276,
        size.height * 0.5079088,
        size.width * 0.6180943,
        size.height * 0.4776912,
        size.width * 0.5890149,
        size.height * 0.4753647);
    path_9.lineTo(size.width * 0.5886563, size.height * 0.5047618);
    path_9.cubicTo(
        size.width * 0.6156862,
        size.height * 0.5069235,
        size.width * 0.6533126,
        size.height * 0.5354706,
        size.width * 0.6953874,
        size.height * 0.5738618);
    path_9.cubicTo(
        size.width * 0.7163172,
        size.height * 0.5929588,
        size.width * 0.7381460,
        size.height * 0.6142941,
        size.width * 0.7600966,
        size.height * 0.6356676);
    path_9.cubicTo(
        size.width * 0.7820230,
        size.height * 0.6570176,
        size.width * 0.8040644,
        size.height * 0.6784000,
        size.width * 0.8253103,
        size.height * 0.6974765);
    path_9.cubicTo(
        size.width * 0.8675943,
        size.height * 0.7354412,
        size.width * 0.9074966,
        size.height * 0.7650147,
        size.width * 0.9375897,
        size.height * 0.7663618);
    path_9.cubicTo(
        size.width * 0.9526621,
        size.height * 0.7670353,
        size.width * 0.9660851,
        size.height * 0.7607000,
        size.width * 0.9761598,
        size.height * 0.7428324);
    path_9.cubicTo(
        size.width * 0.9865161,
        size.height * 0.7244618,
        size.width * 0.9924598,
        size.height * 0.6954941,
        size.width * 0.9936448,
        size.height * 0.6561382);
    path_9.lineTo(size.width * 0.9821851, size.height * 0.6538765);
    path_9.close();
    path_9.moveTo(size.width * 0.5833299, size.height * 0.4942824);
    path_9.cubicTo(
        size.width * 0.5863494,
        size.height * 0.5200765,
        size.width * 0.5993034,
        size.height * 0.6091029,
        size.width * 0.6063782,
        size.height * 0.6975912);
    path_9.cubicTo(
        size.width * 0.6099126,
        size.height * 0.7417971,
        size.width * 0.6118276,
        size.height * 0.7842618,
        size.width * 0.6104299,
        size.height * 0.8173147);
    path_9.cubicTo(
        size.width * 0.6090149,
        size.height * 0.8507971,
        size.width * 0.6045149,
        size.height * 0.8695000,
        size.width * 0.5971437,
        size.height * 0.8757441);
    path_9.lineTo(size.width * 0.6007563, size.height * 0.9036676);
    path_9.cubicTo(
        size.width * 0.6146851,
        size.height * 0.8918647,
        size.width * 0.6202851,
        size.height * 0.8576882,
        size.width * 0.6218575,
        size.height * 0.8204765);
    path_9.cubicTo(
        size.width * 0.6234494,
        size.height * 0.7828324,
        size.width * 0.6212448,
        size.height * 0.7367912,
        size.width * 0.6176391,
        size.height * 0.6916941);
    path_9.cubicTo(
        size.width * 0.6104345,
        size.height * 0.6015794,
        size.width * 0.5970310,
        size.height * 0.5088294,
        size.width * 0.5943414,
        size.height * 0.4858441);
    path_9.lineTo(size.width * 0.5833299, size.height * 0.4942824);
    path_9.close();
    path_9.moveTo(size.width * 0.5783506, size.height * 0.09525353);
    path_9.cubicTo(
        size.width * 0.7101345,
        size.height * 0.1110688,
        size.width * 0.8392874,
        size.height * 0.1422706,
        size.width * 0.9695851,
        size.height * 0.06051676);
    path_9.lineTo(size.width * 0.9668471, size.height * 0.03195118);
    path_9.cubicTo(
        size.width * 0.8385747,
        size.height * 0.1124344,
        size.width * 0.7115011,
        size.height * 0.08178882,
        size.width * 0.5788897,
        size.height * 0.06587412);
    path_9.lineTo(size.width * 0.5783506, size.height * 0.09525353);
    path_9.close();
    path_9.moveTo(size.width * 0.9667310, size.height * 0.06044029);
    path_9.lineTo(size.width * 0.9803782, size.height * 0.06978235);
    path_9.lineTo(size.width * 0.9833483, size.height * 0.04136971);
    path_9.lineTo(size.width * 0.9697011, size.height * 0.03202765);
    path_9.lineTo(size.width * 0.9667310, size.height * 0.06044029);
    path_9.close();
    path_9.moveTo(size.width * 0.9763816, size.height * 0.05999382);
    path_9.cubicTo(
        size.width * 0.9796851,
        size.height * 0.08683118,
        size.width * 0.9792897,
        size.height * 0.1095003,
        size.width * 0.9763299,
        size.height * 0.1290915);
    path_9.cubicTo(
        size.width * 0.9733368,
        size.height * 0.1489097,
        size.width * 0.9675195,
        size.height * 0.1668818,
        size.width * 0.9591391,
        size.height * 0.1831559);
    path_9.cubicTo(
        size.width * 0.9422345,
        size.height * 0.2159806,
        size.width * 0.9160287,
        size.height * 0.2397465,
        size.width * 0.8863644,
        size.height * 0.2569818);
    path_9.cubicTo(
        size.width * 0.8271161,
        size.height * 0.2914056,
        size.width * 0.7575517,
        size.height * 0.2980765,
        size.width * 0.7291184,
        size.height * 0.3052176);
    path_9.lineTo(size.width * 0.7302414, size.height * 0.3344882);
    path_9.cubicTo(
        size.width * 0.7576126,
        size.height * 0.3276147,
        size.width * 0.8287241,
        size.height * 0.3206324,
        size.width * 0.8889092,
        size.height * 0.2856635);
    path_9.cubicTo(
        size.width * 0.9189609,
        size.height * 0.2682029,
        size.width * 0.9471609,
        size.height * 0.2433382,
        size.width * 0.9660874,
        size.height * 0.2065850);
    path_9.cubicTo(
        size.width * 0.9756218,
        size.height * 0.1880700,
        size.width * 0.9830759,
        size.height * 0.1660162,
        size.width * 0.9870517,
        size.height * 0.1396953);
    path_9.cubicTo(
        size.width * 0.9910621,
        size.height * 0.1131471,
        size.width * 0.9913333,
        size.height * 0.08356353,
        size.width * 0.9873448,
        size.height * 0.05115824);
    path_9.lineTo(size.width * 0.9763816, size.height * 0.05999382);
    path_9.close();
    path_9.moveTo(size.width * 0.7327046, size.height * 0.3073500);
    path_9.lineTo(size.width * 0.5816448, size.height * 0.06806000);
    path_9.lineTo(size.width * 0.5755954, size.height * 0.09306765);
    path_9.lineTo(size.width * 0.7266552, size.height * 0.3323559);
    path_9.lineTo(size.width * 0.7327046, size.height * 0.3073500);
    path_9.close();
    path_9.moveTo(size.width * 0.5943667, size.height * 0.4860647);
    path_9.cubicTo(
        size.width * 0.5878172,
        size.height * 0.4267529,
        size.width * 0.5780667,
        size.height * 0.3415294,
        size.width * 0.5655977,
        size.height * 0.2649059);
    path_9.cubicTo(
        size.width * 0.5593632,
        size.height * 0.2265965,
        size.width * 0.5523839,
        size.height * 0.1900203,
        size.width * 0.5446931,
        size.height * 0.1597312);
    path_9.cubicTo(
        size.width * 0.5370644,
        size.height * 0.1296909,
        size.width * 0.5284069,
        size.height * 0.1045041,
        size.width * 0.5186172,
        size.height * 0.09061735);
    path_9.lineTo(size.width * 0.5130437, size.height * 0.1163409);
    path_9.cubicTo(
        size.width * 0.5204115,
        size.height * 0.1267926,
        size.width * 0.5278218,
        size.height * 0.1472762,
        size.width * 0.5350540,
        size.height * 0.1757562);
    path_9.cubicTo(
        size.width * 0.5422230,
        size.height * 0.2039874,
        size.width * 0.5488954,
        size.height * 0.2387821,
        size.width * 0.5549862,
        size.height * 0.2762121);
    path_9.cubicTo(
        size.width * 0.5671678,
        size.height * 0.3510676,
        size.width * 0.5767621,
        size.height * 0.4347971,
        size.width * 0.5833046,
        size.height * 0.4940618);
    path_9.lineTo(size.width * 0.5943667, size.height * 0.4860647);
    path_9.close();
    path_9.moveTo(size.width * 0.4922598, size.height * 0.2426144);
    path_9.cubicTo(
        size.width * 0.5080276,
        size.height * 0.3202441,
        size.width * 0.5159678,
        size.height * 0.4417059,
        size.width * 0.5210678,
        size.height * 0.5669382);
    path_9.cubicTo(
        size.width * 0.5236046,
        size.height * 0.6292294,
        size.width * 0.5254184,
        size.height * 0.6917529,
        size.width * 0.5271943,
        size.height * 0.7494971);
    path_9.cubicTo(
        size.width * 0.5289655,
        size.height * 0.8070618,
        size.width * 0.5307034,
        size.height * 0.8600676,
        size.width * 0.5330931,
        size.height * 0.9026882);
    path_9.lineTo(size.width * 0.5444701, size.height * 0.8985147);
    path_9.cubicTo(
        size.width * 0.5421425,
        size.height * 0.8569794,
        size.width * 0.5404287,
        size.height * 0.8049147,
        size.width * 0.5386529,
        size.height * 0.7471882);
    path_9.cubicTo(
        size.width * 0.5368828,
        size.height * 0.6896382,
        size.width * 0.5350563,
        size.height * 0.6266471,
        size.width * 0.5325000,
        size.height * 0.5638912);
    path_9.cubicTo(
        size.width * 0.5274149,
        size.height * 0.4390294,
        size.width * 0.5193609,
        size.height * 0.3122618,
        size.width * 0.5024586,
        size.height * 0.2290503);
    path_9.lineTo(size.width * 0.4922598, size.height * 0.2426144);
    path_9.close();
    path_9.moveTo(size.width * 0.5385552, size.height * 0.9152971);
    path_9.lineTo(size.width * 0.5625678, size.height * 0.9177147);
    path_9.lineTo(size.width * 0.5630195, size.height * 0.8883235);
    path_9.lineTo(size.width * 0.5390080, size.height * 0.8859059);
    path_9.lineTo(size.width * 0.5385552, size.height * 0.9152971);
    path_9.close();
    path_9.moveTo(size.width * 0.5629920, size.height * 0.9177176);
    path_9.lineTo(size.width * 0.5804862, size.height * 0.9161735);
    path_9.lineTo(size.width * 0.5800908, size.height * 0.8867794);
    path_9.lineTo(size.width * 0.5625954, size.height * 0.8883235);
    path_9.lineTo(size.width * 0.5629920, size.height * 0.9177176);
    path_9.close();
    path_9.moveTo(size.width * 0.5817057, size.height * 0.9157294);
    path_9.lineTo(size.width * 0.6016943, size.height * 0.9027147);
    path_9.lineTo(size.width * 0.5988598, size.height * 0.8742118);
    path_9.lineTo(size.width * 0.5788713, size.height * 0.8872235);
    path_9.lineTo(size.width * 0.5817057, size.height * 0.9157294);
    path_9.close();
    path_9.moveTo(size.width * 0.2038885, size.height * 0.7930559);
    path_9.cubicTo(
        size.width * 0.2164805,
        size.height * 0.7908265,
        size.width * 0.2347241,
        size.height * 0.7915588,
        size.width * 0.2555391,
        size.height * 0.7914176);
    path_9.cubicTo(
        size.width * 0.2761644,
        size.height * 0.7912794,
        size.width * 0.2990299,
        size.height * 0.7902676,
        size.width * 0.3202368,
        size.height * 0.7844000);
    path_9.cubicTo(
        size.width * 0.3413161,
        size.height * 0.7785676,
        size.width * 0.3614057,
        size.height * 0.7677882,
        size.width * 0.3761356,
        size.height * 0.7471588);
    path_9.cubicTo(
        size.width * 0.3835644,
        size.height * 0.7367559,
        size.width * 0.3898805,
        size.height * 0.7235029,
        size.width * 0.3941977,
        size.height * 0.7065000);
    path_9.cubicTo(
        size.width * 0.3985632,
        size.height * 0.6893059,
        size.width * 0.4006713,
        size.height * 0.6690971,
        size.width * 0.4001333,
        size.height * 0.6459500);
    path_9.lineTo(size.width * 0.3886598, size.height * 0.6476971);
    path_9.cubicTo(
        size.width * 0.3890598,
        size.height * 0.6649382,
        size.width * 0.3875115,
        size.height * 0.6788500,
        size.width * 0.3845586,
        size.height * 0.6904765);
    path_9.cubicTo(
        size.width * 0.3815586,
        size.height * 0.7022941,
        size.width * 0.3768954,
        size.height * 0.7125647,
        size.width * 0.3706172,
        size.height * 0.7213588);
    path_9.cubicTo(
        size.width * 0.3579322,
        size.height * 0.7391235,
        size.width * 0.3396954,
        size.height * 0.7494324,
        size.width * 0.3190011,
        size.height * 0.7551588);
    path_9.cubicTo(
        size.width * 0.2984356,
        size.height * 0.7608500,
        size.width * 0.2760828,
        size.height * 0.7618676,
        size.width * 0.2555092,
        size.height * 0.7620059);
    path_9.cubicTo(
        size.width * 0.2351264,
        size.height * 0.7621441,
        size.width * 0.2161931,
        size.height * 0.7613971,
        size.width * 0.2030954,
        size.height * 0.7637147);
    path_9.lineTo(size.width * 0.2038885, size.height * 0.7930559);
    path_9.close();
    path_9.moveTo(size.width * 0.3886506, size.height * 0.6471294);
    path_9.cubicTo(
        size.width * 0.3887989,
        size.height * 0.6653206,
        size.width * 0.3889552,
        size.height * 0.6828088,
        size.width * 0.3911724,
        size.height * 0.6973559);
    path_9.cubicTo(
        size.width * 0.3936356,
        size.height * 0.7135294,
        size.width * 0.3983356,
        size.height * 0.7246853,
        size.width * 0.4058506,
        size.height * 0.7327618);
    path_9.lineTo(size.width * 0.4103011, size.height * 0.7056441);
    path_9.cubicTo(
        size.width * 0.4049494,
        size.height * 0.6998941,
        size.width * 0.4029632,
        size.height * 0.6937765,
        size.width * 0.4018816,
        size.height * 0.6866735);
    path_9.cubicTo(
        size.width * 0.4005517,
        size.height * 0.6779471,
        size.width * 0.4003023,
        size.height * 0.6661588,
        size.width * 0.4001425,
        size.height * 0.6465176);
    path_9.lineTo(size.width * 0.3886506, size.height * 0.6471294);
    path_9.close();
    path_9.moveTo(size.width * 0.4067782, size.height * 0.7335294);
    path_9.lineTo(size.width * 0.4369874, size.height * 0.7514500);
    path_9.lineTo(size.width * 0.4395839, size.height * 0.7227971);
    path_9.lineTo(size.width * 0.4093736, size.height * 0.7048765);
    path_9.lineTo(size.width * 0.4067782, size.height * 0.7335294);
    path_9.close();
    path_9.moveTo(size.width * 0.4404828, size.height * 0.7507118);
    path_9.cubicTo(
        size.width * 0.4432713,
        size.height * 0.7477588,
        size.width * 0.4458506,
        size.height * 0.7451176,
        size.width * 0.4483161,
        size.height * 0.7425647);
    path_9.lineTo(size.width * 0.4440057, size.height * 0.7153000);
    path_9.cubicTo(
        size.width * 0.4415897,
        size.height * 0.7178029,
        size.width * 0.4389322,
        size.height * 0.7205235,
        size.width * 0.4360885,
        size.height * 0.7235353);
    path_9.lineTo(size.width * 0.4404828, size.height * 0.7507118);
    path_9.close();
    path_9.moveTo(size.width * 0.4483172, size.height * 0.7425647);
    path_9.cubicTo(
        size.width * 0.4561701,
        size.height * 0.7344353,
        size.width * 0.4630816,
        size.height * 0.7270471,
        size.width * 0.4688138,
        size.height * 0.7150588);
    path_9.cubicTo(
        size.width * 0.4747575,
        size.height * 0.7026294,
        size.width * 0.4790678,
        size.height * 0.6861294,
        size.width * 0.4827414,
        size.height * 0.6613853);
    path_9.lineTo(size.width * 0.4719954, size.height * 0.6509412);
    path_9.cubicTo(
        size.width * 0.4688126,
        size.height * 0.6723853,
        size.width * 0.4654977,
        size.height * 0.6840088,
        size.width * 0.4615402,
        size.height * 0.6922853);
    path_9.cubicTo(
        size.width * 0.4573713,
        size.height * 0.7010059,
        size.width * 0.4521069,
        size.height * 0.7069118,
        size.width * 0.4440046,
        size.height * 0.7153029);
    path_9.lineTo(size.width * 0.4483172, size.height * 0.7425647);
    path_9.close();
    path_9.moveTo(size.width * 0.4720103, size.height * 0.6508412);
    path_9.cubicTo(
        size.width * 0.4683310,
        size.height * 0.6750853,
        size.width * 0.4642609,
        size.height * 0.6869647,
        size.width * 0.4591414,
        size.height * 0.6957471);
    path_9.cubicTo(
        size.width * 0.4534379,
        size.height * 0.7055324,
        size.width * 0.4466322,
        size.height * 0.7114735,
        size.width * 0.4359414,
        size.height * 0.7236971);
    path_9.lineTo(size.width * 0.4406299, size.height * 0.7505500);
    path_9.cubicTo(
        size.width * 0.4500506,
        size.height * 0.7397794,
        size.width * 0.4587517,
        size.height * 0.7318265,
        size.width * 0.4655425,
        size.height * 0.7201765);
    path_9.cubicTo(
        size.width * 0.4729195,
        size.height * 0.7075206,
        size.width * 0.4783345,
        size.height * 0.6904176,
        size.width * 0.4827253,
        size.height * 0.6614882);
    path_9.lineTo(size.width * 0.4720103, size.height * 0.6508412);
    path_9.close();
    path_9.moveTo(size.width * 0.4325483, size.height * 0.7362882);
    path_9.cubicTo(
        size.width * 0.4315207,
        size.height * 0.7825735,
        size.width * 0.4440506,
        size.height * 0.8166824,
        size.width * 0.4558172,
        size.height * 0.8346118);
    path_9.lineTo(size.width * 0.4616989, size.height * 0.8093382);
    path_9.cubicTo(
        size.width * 0.4516747,
        size.height * 0.7940676,
        size.width * 0.4433448,
        size.height * 0.7685324,
        size.width * 0.4440241,
        size.height * 0.7379559);
    path_9.lineTo(size.width * 0.4325483, size.height * 0.7362882);
    path_9.close();
    path_9.moveTo(size.width * 0.2859310, size.height * 0.7830824);
    path_9.cubicTo(
        size.width * 0.2974379,
        size.height * 0.8602618,
        size.width * 0.3261207,
        size.height * 0.8984353,
        size.width * 0.3563609,
        size.height * 0.9212000);
    path_9.cubicTo(
        size.width * 0.3715954,
        size.height * 0.9326676,
        size.width * 0.3876299,
        size.height * 0.9405235,
        size.width * 0.4027310,
        size.height * 0.9473265);
    path_9.cubicTo(
        size.width * 0.4179667,
        size.height * 0.9541912,
        size.width * 0.4320713,
        size.height * 0.9599118,
        size.width * 0.4439885,
        size.height * 0.9671882);
    path_9.lineTo(size.width * 0.4466563, size.height * 0.9385794);
    path_9.cubicTo(
        size.width * 0.4342966,
        size.height * 0.9310324,
        size.width * 0.4196368,
        size.height * 0.9250794,
        size.width * 0.4047241,
        size.height * 0.9183618);
    path_9.cubicTo(
        size.width * 0.3896782,
        size.height * 0.9115824,
        size.width * 0.3741816,
        size.height * 0.9039559,
        size.width * 0.3596046,
        size.height * 0.8929824);
    path_9.cubicTo(
        size.width * 0.3302253,
        size.height * 0.8708676,
        size.width * 0.3061736,
        size.height * 0.8363412,
        size.width * 0.2966701,
        size.height * 0.7725971);
    path_9.lineTo(size.width * 0.2859310, size.height * 0.7830824);
    path_9.close();
    path_9.moveTo(size.width * 0.4444966, size.height * 0.9674382);
    path_9.lineTo(size.width * 0.5007253, size.height * 0.9883353);
    path_9.lineTo(size.width * 0.5023770, size.height * 0.9592294);
    path_9.lineTo(size.width * 0.4461483, size.height * 0.9383294);
    path_9.lineTo(size.width * 0.4444966, size.height * 0.9674382);
    path_9.close();
    path_9.moveTo(size.width * 0.5008655, size.height * 0.9883824);
    path_9.cubicTo(
        size.width * 0.5105621,
        size.height * 0.9913618,
        size.width * 0.5213057,
        size.height * 0.9874882,
        size.width * 0.5298276,
        size.height * 0.9735676);
    path_9.cubicTo(
        size.width * 0.5386414,
        size.height * 0.9591706,
        size.width * 0.5445517,
        size.height * 0.9348029,
        size.width * 0.5445172,
        size.height * 0.9005676);
    path_9.lineTo(size.width * 0.5330230, size.height * 0.9006441);
    path_9.cubicTo(
        size.width * 0.5330471,
        size.height * 0.9249794,
        size.width * 0.5290851,
        size.height * 0.9398853,
        size.width * 0.5236425,
        size.height * 0.9487765);
    path_9.cubicTo(
        size.width * 0.5179080,
        size.height * 0.9581441,
        size.width * 0.5100126,
        size.height * 0.9615706,
        size.width * 0.5022368,
        size.height * 0.9591794);
    path_9.lineTo(size.width * 0.5008655, size.height * 0.9883824);
    path_9.close();
    path_9.moveTo(size.width * 0.3746885, size.height * 0.7491147);
    path_9.cubicTo(
        size.width * 0.3786425,
        size.height * 0.7435618,
        size.width * 0.3817356,
        size.height * 0.7397647,
        size.width * 0.3841276,
        size.height * 0.7373471);
    path_9.cubicTo(
        size.width * 0.3865908,
        size.height * 0.7348559,
        size.width * 0.3879770,
        size.height * 0.7341765,
        size.width * 0.3886161,
        size.height * 0.7341029);
    path_9.cubicTo(
        size.width * 0.3891701,
        size.height * 0.7340353,
        size.width * 0.3882598,
        size.height * 0.7344588,
        size.width * 0.3873770,
        size.height * 0.7319559);
    path_9.cubicTo(
        size.width * 0.3866759,
        size.height * 0.7299618,
        size.width * 0.3868644,
        size.height * 0.7284765,
        size.width * 0.3868759,
        size.height * 0.7306088);
    path_9.cubicTo(
        size.width * 0.3869000,
        size.height * 0.7352059,
        size.width * 0.3861690,
        size.height * 0.7428000,
        size.width * 0.3849402,
        size.height * 0.7546912);
    path_9.cubicTo(
        size.width * 0.3838310,
        size.height * 0.7654206,
        size.width * 0.3824437,
        size.height * 0.7787029,
        size.width * 0.3820023,
        size.height * 0.7914706);
    path_9.lineTo(size.width * 0.3934517, size.height * 0.7940647);
    path_9.cubicTo(
        size.width * 0.3937908,
        size.height * 0.7842500,
        size.width * 0.3948897,
        size.height * 0.7734618,
        size.width * 0.3960529,
        size.height * 0.7622088);
    path_9.cubicTo(
        size.width * 0.3970954,
        size.height * 0.7521147,
        size.width * 0.3984207,
        size.height * 0.7398206,
        size.width * 0.3983690,
        size.height * 0.7302088);
    path_9.cubicTo(
        size.width * 0.3983425,
        size.height * 0.7252353,
        size.width * 0.3979598,
        size.height * 0.7180676,
        size.width * 0.3959138,
        size.height * 0.7122588);
    path_9.cubicTo(
        size.width * 0.3936874,
        size.height * 0.7059412,
        size.width * 0.3906598,
        size.height * 0.7044176,
        size.width * 0.3880839,
        size.height * 0.7047206);
    path_9.cubicTo(
        size.width * 0.3855931,
        size.height * 0.7050176,
        size.width * 0.3828356,
        size.height * 0.7070265,
        size.width * 0.3799034,
        size.height * 0.7099912);
    path_9.cubicTo(
        size.width * 0.3769000,
        size.height * 0.7130294,
        size.width * 0.3733448,
        size.height * 0.7174500,
        size.width * 0.3691575,
        size.height * 0.7233324);
    path_9.lineTo(size.width * 0.3746885, size.height * 0.7491147);
    path_9.close();
    path_9.moveTo(size.width * 0.3934655, size.height * 0.7935824);
    path_9.cubicTo(
        size.width * 0.3939759,
        size.height * 0.7700471,
        size.width * 0.3957046,
        size.height * 0.7566412,
        size.width * 0.3982115,
        size.height * 0.7489382);
    path_9.cubicTo(
        size.width * 0.4004793,
        size.height * 0.7419706,
        size.width * 0.4042103,
        size.height * 0.7372382,
        size.width * 0.4114655,
        size.height * 0.7367059);
    path_9.lineTo(size.width * 0.4111356, size.height * 0.7073059);
    path_9.cubicTo(
        size.width * 0.4020828,
        size.height * 0.7079706,
        size.width * 0.3945563,
        size.height * 0.7142088,
        size.width * 0.3893793,
        size.height * 0.7301176);
    path_9.cubicTo(
        size.width * 0.3844414,
        size.height * 0.7452912,
        size.width * 0.3825379,
        size.height * 0.7666706,
        size.width * 0.3819885,
        size.height * 0.7919500);
    path_9
      ..lineTo(size.width * 0.3934655, size.height * 0.7935824)
      ..close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Colors.black.withOpacity(1.0);
    canvas..drawPath(path_9, paint_9_fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
