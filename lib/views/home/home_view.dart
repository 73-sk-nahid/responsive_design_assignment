import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_design_assignment/views/home/home_content_desktop.dart';
import 'package:responsive_design_assignment/views/home/home_content_mobile.dart';
import 'package:responsive_design_assignment/widgets/centered_view/centered_view.dart';
import 'package:responsive_design_assignment/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_design_assignment/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const NavDrawer() : null,
        // drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const NavDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children:[
              const NavBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: const HomeContentMobile(),
                  desktop: const HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
