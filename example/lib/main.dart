import 'package:flutter/material.dart';
import 'package:glimmer/glimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glimmer Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Glimmer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Glimmer(
          isActive: true,
          radius: 24,
          stroke: 8,
          duration: const Duration(seconds: 20),
          stops: const [0.1, 0.3, 0.4],
          colors: const [Colors.red, Colors.yellow, Colors.white],
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF05053E), Color(0xFF1A065E)]),
                color: const Color(0xFF0D042A),
                borderRadius: BorderRadius.circular(24)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Glimmer(
                  isActive: true,
                  stroke: 2,
                  radius: 24,
                  child: MyElevatedButton(
                    onPressed: () => {},
                    child: const Text(
                      "Generate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Glimmer(
                      isActive: true,
                      stroke: 2,
                      radius: 24,
                      clockwise: false,
                      colors: const [
                        Colors.yellow,
                        Colors.white,
                        Colors.transparent
                      ],
                      child: IconButton(
                        color: Colors.yellow,
                        onPressed: () => {},
                        icon: const Icon(Icons.abc),
                      ),
                    ),
                    Glimmer(
                      isActive: true,
                      stroke: 4,
                      clockwise: false,
                      radius: 0,
                      duration: const Duration(seconds: 10),
                      colors: const [Colors.red, Colors.green, Colors.yellow],
                      child: Container(
                        width: 48,
                        height: 48,
                        color: Colors.white,
                        child: const Center(child: Text("10s")),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(24);
    return Container(
      width: 180,
      height: 49,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF05051E),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
