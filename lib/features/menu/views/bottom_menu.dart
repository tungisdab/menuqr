import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuqr/features/home/presentation/home_screen.dart';
import 'package:menuqr/features/menu/menu.dart';
import 'package:menuqr/features/order/presentation/order_screen.dart';
import 'package:menuqr/features/payment/presentation/payment_screen.dart';
import 'package:menuqr/features/report/presentation/report_screen.dart';
import 'package:menuqr/features/setting_app/presentation/setting_screen.dart';

import '../../../core/styles/styles.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> screens = const [
    HomeScreen(),
    OrderScreen(),
    ReportScreen(),
    PaymentScreen(),
    SettingScreen(),
  ];

  void jumpToPage(int index) {
    _pageController.jumpToPage(index);
    context.read<BottomNavCubit>().selectTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _menu(context),
      body: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return PageView(
            controller: _pageController,
            onPageChanged: (index) {
              context.read<BottomNavCubit>().selectTab(index);
            },
            physics: const NeverScrollableScrollPhysics(),
            children: screens,
          );
        },
      ),
    );
  }

  Widget _menu(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: NavigationBar(
          elevation: 70,
          indicatorColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 1000),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: context.watch<BottomNavCubit>().state,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          destinations: [
            NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ParagraphSpacingBox(
                    h: 10,
                    w: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/home.svg',
                    colorFilter: ColorFilter.mode(
                      context.watch<BottomNavCubit>().state == 0
                          ? Colors.blue
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  const ParagraphSpacingBox(
                    h: 4,
                    w: 4,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.watch<BottomNavCubit>().state == 0
                          ? Colors.blue
                          : Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ParagraphSpacingBox(
                    h: 10,
                    w: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/bag3.svg',
                    colorFilter: ColorFilter.mode(
                      context.watch<BottomNavCubit>().state == 1
                          ? Colors.blue
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  const ParagraphSpacingBox(
                    h: 4,
                    w: 4,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.watch<BottomNavCubit>().state == 1
                          ? Colors.blue
                          : Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              label: 'Order',
            ),
            NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ParagraphSpacingBox(
                    h: 10,
                    w: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/chart2.svg',
                    colorFilter: ColorFilter.mode(
                      context.watch<BottomNavCubit>().state == 2
                          ? Colors.blue
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  const ParagraphSpacingBox(
                    h: 4,
                    w: 4,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.watch<BottomNavCubit>().state == 2
                          ? Colors.blue
                          : Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              label: 'Report',
            ),
            NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ParagraphSpacingBox(
                    h: 10,
                    w: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/group.svg',
                    colorFilter: ColorFilter.mode(
                      context.watch<BottomNavCubit>().state == 3
                          ? Colors.blue
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  const ParagraphSpacingBox(
                    h: 4,
                    w: 4,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.watch<BottomNavCubit>().state == 3
                          ? Colors.blue
                          : Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              label: 'Payment',
            ),
            NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ParagraphSpacingBox(
                    h: 10,
                    w: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/setting.svg',
                    colorFilter: ColorFilter.mode(
                      context.watch<BottomNavCubit>().state == 4
                          ? Colors.blue
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  const ParagraphSpacingBox(
                    h: 4,
                    w: 4,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.watch<BottomNavCubit>().state == 4
                          ? Colors.blue
                          : Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              label: 'Setting',
            ),
          ],
          onDestinationSelected: (index) {
            jumpToPage(index);
          },
        ),
      ),
    );
  }
}
