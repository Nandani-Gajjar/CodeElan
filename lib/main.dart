import 'package:codeelan/UI/homePage.dart';
import 'package:codeelan/UI/screens/Services/adopt_cloud.dart';
import 'package:codeelan/UI/screens/aboutUs.dart';
import 'package:codeelan/UI/screens/contact-us.dart';
import 'package:codeelan/UI/screens/Services/service.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hover_menu/hover_menu.dart';
import 'Utils/widgets.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeElan Technologies - You Think IT We Deliver IT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: AdoptCloudUI(),
    );
  }
}

class HoverMenuController {
  HoverMenuWidgetState? currentState;

  void hideSubMenu() {
    currentState?.hideSubMenu();
  }
}

class HoverMenuWidget extends StatefulWidget {
  final Widget title;
  final double? width;
  final List<Widget> items;
  final HoverMenuController? controller;

  const HoverMenuWidget({
    Key? key,
    required this.title,
    this.items = const [],
    this.width,
    this.controller,
  }) : super(key: key);

  @override
  HoverMenuWidgetState createState() => HoverMenuWidgetState();
}

class HoverMenuWidgetState extends State<HoverMenuWidget> {
  OverlayEntry? _overlayEntry;
  final _focusNode = FocusNode();
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);

    if (widget.controller != null) {
      widget.controller?.currentState = this;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _isHovered = false;
  }

  void hideSubMenu() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      focusNode: _focusNode,
      onHover: (isHovered) {
        if (isHovered && !_isHovered) {
          _focusNode.requestFocus();
          _isHovered = true;
        }
      },
      onPressed: () {},
      child: widget.title,
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: widget.width ?? 200,
        child: TextButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),


                ),
              ),
              overlayColor:
                  WidgetStateColor.resolveWith((states) => Colors.transparent),
            ),
            onPressed: () {},
            onHover: (isHovered) {
              if (isHovered && _isHovered) {
                _focusNode.requestFocus();
              } else {
                _focusNode.unfocus();
              }
            },
            child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: widget.items)),
      ),
    );
  }
}

/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  OverlayEntry? overlayEntry2;
  bool showOverlay = false;
  int index = 0;
  List<Widget> widgets = [
    Container(
        height: 40,
        width: 60,
        color: Colors.transparent
    ),
    Container(
        height: 40,
        width: 60,
        color: Colors.red
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
      child: InkWell(
        child: Text('Click Me'),
        onTap: (){
          print('Clicked');
        },
      ),
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.black,
      child: InkWell(child: Text('Click Me'),
        onTap: (){
          print('Clicked');
        },
      ),
    ),
  ];
  final layerLink = LayerLink();
  final textButtonFocusNode = FocusNode();
  final textButtonFocusNode1 = FocusNode();


  void _showOverlay(BuildContext context, int index) async {
    overlayState = Overlay.of(context)!;

    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
            top: MediaQuery.of(context).size.height * 0.09,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }
                }
              },
              child: widgets[index],
            ),
          );
        });
    overlayEntry2 = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
            top: MediaQuery.of(context).size.height * 0.13,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }
                }
              },
              child: widgets[index+2],
            ),
          );
        });

    // overlayState!.insert(overlayEntry!);
    overlayState!.insertAll([overlayEntry!, overlayEntry2!]);
  }

  void removeOverlay() {
    overlayEntry!.remove();
    overlayEntry2!.remove();
  }

  @override
  void initState() {
    super.initState();
    textButtonFocusNode.addListener(() {
      if (textButtonFocusNode.hasFocus) {
        _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode1.addListener(() {
      if (textButtonFocusNode1.hasFocus) {
        _showOverlay(context, 1);
      } else {
        removeOverlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              focusNode: textButtonFocusNode,
              onHover: (val) {
                if (val) {
                  textButtonFocusNode.requestFocus();
                  showOverlay = true;
                }
              },
              onPressed: () {},
              child: const Text('Hover'),
            ),
            TextButton(
              focusNode: textButtonFocusNode1,
              onHover: (val) {
                if (val) {
                  textButtonFocusNode1.requestFocus();
                  showOverlay = true;
                }
              },
              onPressed: () {},
              child: const Text('Hover'),
            ),
          ],
        ),
      ),
    );
  }
}*/
