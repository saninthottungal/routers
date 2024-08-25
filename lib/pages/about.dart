import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AboutPage extends HookWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textState = useState("Loading");
    useEffect(
      () {
        Future.delayed(
          const Duration(seconds: 2),
          () {
            textState.value = 'About page';
          },
        );
        return;
      },
    );
    return Center(
      child: Text(textState.value),
    );
  }
}
