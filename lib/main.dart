import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      //  Scaffold(
      //   body: Center(
      //     child: GestureDetector(
      //             onTap: (){
      //               setState(() {
      //                 height= 400;
      //                 width = 200;
      //                 colors = Colors.amber;
      //               });
      //             },
      //             child: AnimatedContainer(
      //               height: height,
      //               width: width,
      //               color: colors,
      //               duration: Duration(seconds: 1),
      //             ),
      //           ),
      //   )
      // ));
      const HomePage(), );
  }
}
double height = 200;

double width = 100;

Color colors=  Colors.purpleAccent;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final colors = const [
    ColorModel(color : Color(0xffA8E0ff)),
    ColorModel(color : Color(0xff89248c)),
    ColorModel(color : Color(0xff626668)),
    ColorModel(color : Color(0xfff40303)),
    ColorModel(color : Color(0xff60f206)),
    ColorModel(color : Color(0xff060000)),
    ColorModel(color : Color(0xff0639f2)),
    ColorModel(color : Color(0xffbd6b6b))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        // // GestureDetector(
        // //   onTap: (){
        // //     setState(() {
        // //       height= 400;
        // //       width = 500;
        // //       colors = Colors.amber;
        // //     });
        // //   },
        // //   child: AnimatedContainer(
        // //     height: height,
        // //     width: width,
        // //     color: colors,
        // //     duration: Duration(seconds: 1),
        // //   ),
        // // ),
        // Center(
        //   child: Container(
        //     margin: EdgeInsets.symmetric(horizontal: 16),
        //     height: 50,
        //     width: MediaQuery.of(context).size.width,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       color: Colors.purpleAccent
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text("Hello"),
        //         SizedBox(width:  10,),
        //         AnimatedCrossFade(
        //             firstChild: Text("first text "),
        //             firstCurve: Curves.bounceIn,
        //             secondChild: Text("hi group 60"),
        //             crossFadeState: CrossFadeState.showFirst,
        //
        //             duration: Duration(seconds: 5)
        //         )
        //       ],
        //     ),
        //   ),
        // )
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              color: colors.first.color,
            ),
            Divider(height: 10,thickness: 2,),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: colors.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: 12, mainAxisSpacing: 12),
                  itemBuilder: (context, index) {
                    return GridItem(colorModel: colors[index],);
                  }),
            ),
          ],
        ));
  }
}

class GridItem extends StatelessWidget {
  ColorModel colorModel ;
  GridItem({super.key ,required this.colorModel});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: colorModel.color,
    );
  }
}

class ColorModel{
  final Color? color;

  const ColorModel({
    this.color,
  });
}