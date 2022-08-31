import 'package:flutter/material.dart';
import 'package:widgets_personalizado/controllers/posts_controller.dart';
import 'package:widgets_personalizado/widgets/custom_btn.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.posts.value[index].title),
                        ),
                      ),
              ),
              const SizedBox(height: 10),
              CustomBtn(
                onPressed: () => _controller.callApi(),
                title: 'Custom Button',
                titleSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
