import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/presentation/views/home/widgets/inward_rounded_border_painter.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _titleColorTween;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _titleColorTween = ColorTween(
      begin: Colors.white, // Color when expanded
      end: Colors.black, // Color when shrunk
    ).animate(_controller);

    // Add a listener to the scroll controller to trigger the animation on scroll
    _scrollController.addListener(() {
      if (_scrollController.offset > (400 - kToolbarHeight)) {
        _controller
            .forward(); // Start the animation when scrolled beyond a certain offset
      } else if (_scrollController.offset < (400 - kToolbarHeight)) {
        _controller.reverse(); // Reverse the animation when scrolling back up
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            primary: true,
            pinned: true,
            title: Text(
              'Movie ticket',
              style: TextStyle(
                color: _titleColorTween.value,
              ),
            ),
            actions: [
              Icon(
                Icons.menu,
                color: _titleColorTween.value,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
            expandedHeight: 400,
            collapsedHeight: kToolbarHeight,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                print(
                    '${constraints.biggest} ${constraints.smallest} ${constraints.maxHeight}');
                final maxHeight = constraints.maxHeight;
                final top = constraints.biggest.height;

                return AnimatedOpacity(
                  opacity: 1 - ((kToolbarHeight + statusBarHeight) / maxHeight),
                  duration: const Duration(milliseconds: 100),
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Container(
                        color: Colors.indigo,
                      )),
                      const Text(
                        'Your Name',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: maxHeight / 2,
                          width: double.maxFinite,
                          child: CustomPaint(
                            painter: InwardBorderRoundedPainter(),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.maxFinite,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
