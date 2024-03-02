import 'package:flutter/material.dart';

class MarqueeWidget extends StatefulWidget {
  int? length;
  String text;
  final Axis direction;
  final Duration animationDuration, backDuration, pauseDuration;
  final TextStyle style;
  MarqueeWidget(
      {Key? key,
      required this.text,
      this.direction = Axis.horizontal,
      this.animationDuration = const Duration(milliseconds: 6000),
      this.backDuration = const Duration(milliseconds: 800),
      this.pauseDuration = const Duration(milliseconds: 100),
      required this.style})
      : super(key: key);
  @override
  _MarqueeWidgetState createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
  late ScrollController scrollController;
  @override
  void initState()async {
    //widget.length = widget.child.data!.length;

    scrollController = ScrollController(
        //initialScrollOffset: 50.0
        )
      ..addListener(() {
        //print(scrollController.offset);
        // if (scrollController.offset >=
        //     scrollController.position.maxScrollExtent) {

        //   // widget.child = Text(widget.child.data! + widget.child.data!,style: widget.child.style,);
        //   // if(widget.child.data!.length!*3 <= widget.child.data!.length){
        //   //   var t =widget.child.data!.length;
        //   //    widget.child=Text(widget.child.data!.substring(0,widget.length));
        //   // }

        //   //setState(() {});
        // }
      });
    await Future.delayed(const Duration(seconds: 3));
    WidgetsBinding.instance.addPostFrameCallback(scroll);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isOverSide =
        _getTextWidth(context) > MediaQuery.of(context).size.width * 0.95;

    Widget marquee = ListView.builder(
        controller: scrollController,
        scrollDirection: widget.direction,
        itemBuilder: (_, i) {
          final text = Text(
            widget.text,
            style: widget.style,
          );

          return text;
        });

    return isOverSide
        ? marquee
        : Text(
            widget.text,
            style: widget.style,
          );
    // return SingleChildScrollView(
    //   //physics: const NeverScrollableScrollPhysics(),
    //   child: widget.child,
    //   scrollDirection: widget.direction,
    //   controller: scrollController,
    // );
  }

  void scroll(_) async {
    while (scrollController.hasClients) {
      await scrollController.animateTo(scrollController.offset + 100,
          duration: widget.animationDuration, curve: Curves.linear);
      //scrollController.jumpTo(scrollController.offset + 0.001);
    }
    // while (scrollController.hasClients) {

    //   // await Future.delayed(widget.pauseDuration);
    //   // if (scrollController.hasClients) {
    //   //   await scrollController.animateTo(
    //   //     scrollController.position.maxScrollExtent,
    //   //     duration: widget.animationDuration,
    //   //     curve: Curves.ease,
    //   //   );
    //   // }
    //   //await Future.delayed(widget.pauseDuration);
    //   //  if (scrollController.hasClients) {

    //   //    await scrollController.animateTo(
    //   //     scrollController.position.maxScrollExtent,
    //   //     duration: widget.animationDuration,
    //   //     curve: Curves.ease,
    //   //   );

    //   //   await scrollController.animateTo(
    //   //     0.0,
    //   //     duration: widget.backDuration,
    //   //     curve: Curves.easeOut,
    //   //   );
    // }
  }

  // Future<bool> _scroll() async {
  //   await _makeRoundTrip();
  //   if (isDone && widget.onDone != null) {
  //     widget.onDone!();
  //   }
  //   return _running && !isDone && _controller.hasClients;
  // }
  double _getTextWidth(BuildContext context) {
    final span = TextSpan(text: widget.text, style: widget.style);

    final constraints = BoxConstraints(maxWidth: double.infinity);

    final richTextWidget = Text.rich(span).build(context) as RichText;
    final renderObject = richTextWidget.createRenderObject(context);
    renderObject.layout(constraints);

    final boxes = renderObject.getBoxesForSelection(TextSelection(
      baseOffset: 0,
      extentOffset: TextSpan(text: widget.text).toPlainText().length,
    ));

    return boxes.last.right;
  }
}
