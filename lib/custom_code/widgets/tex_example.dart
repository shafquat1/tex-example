// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tex/flutter_tex.dart';

class TexExample extends StatefulWidget {
  const TexExample({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<TexExample> createState() => _TexExampleState();
}

class _TexExampleState extends State<TexExample> {
  int radVal = 0;

  late TeXViewRenderingEngine renderingEngine;
  @override
  Widget build(BuildContext context) {
    renderingEngine = radVal == 0
        ? const TeXViewRenderingEngine.katex()
        : const TeXViewRenderingEngine.mathjax();
    return TeXView(
      renderingEngine: renderingEngine,
      child: TeXViewColumn(children: [
        TeXViewInkWell(
          id: "id_0",
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""<h2>Flutter \( \rm\\TeX \)</h2>""",
                style: TeXViewStyle(textAlign: TeXViewTextAlign.center)),
            TeXViewContainer(
              child: TeXViewImage.network(
                  'https://raw.githubusercontent.com/shah-xad/flutter_tex/master/example/assets/flutter_tex_banner.png'),
              style: TeXViewStyle(
                margin: TeXViewMargin.all(10),
                borderRadius: TeXViewBorderRadius.all(20),
              ),
            ),
            TeXViewDocument(r"""<p>                                
                       When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
                       $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</p>""",
                style: TeXViewStyle.fromCSS(
                    'padding: 15px; color: white; background: green'))
          ]),
        )
      ]),
      style: TeXViewStyle(
        elevation: 10,
        borderRadius: TeXViewBorderRadius.all(25),
        border: TeXViewBorder.all(
          TeXViewBorderDecoration(
              borderColor: Colors.blue,
              borderStyle: TeXViewBorderStyle.solid,
              borderWidth: 5),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
