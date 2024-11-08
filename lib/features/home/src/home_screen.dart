import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0; // Trang hiện tại

  @override
  void initState() {
    super.initState();

    // Lắng nghe sự thay đổi của PageView
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Stack(children: [
        SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/logo.svg', width: 115),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/bell.svg', width: 24),
                        const ParagraphSpacingBox(),
                        SvgPicture.asset('assets/icons/search.svg', width: 24),
                      ],
                    )
                  ],
                ),
                const ParagraphSpacingBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Xin chào!',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge?.fontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Phở Quỳnh Anh',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodySmall?.color,
                            fontSize:
                                Theme.of(context).textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Doanh thu hôm nay',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.fontSize,
                              ),
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset('assets/icons/down.svg',
                                width: 12),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '12.560.000đ',
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SvgPicture.asset(
                              'assets/icons/up1.svg',
                              width: 12,
                              colorFilter: const ColorFilter.mode(
                                Colors.pink,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const ParagraphSpacingBox(),
                Container(
                  height: 30,
                  color: Colors.grey.shade100,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('DH12090344556',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                            )),
                        Text('12:30:40',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                            )),
                        Text('+50.000đ',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                              fontWeight: FontWeight.w500,
                            )),
                        const ParagraphSpacingBox(),
                      ]),
                ),
                const ParagraphSpacingBox(),
                SizedBox(
                  height: 340,
                  width: 340,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 4,
                    itemBuilder: (context, pageIndex) {
                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          childAspectRatio: 1,
                        ),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              print("Đã chọn ô ${index + 1 + pageIndex * 9}");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[(index % 9 + 1) * 100],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "Ô ${index + 1 + pageIndex * 9}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            _currentPage == index ? Colors.blue : Colors.white,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
                const ParagraphSpacingBox(),
                Container(
                  width: 340,
                  height: 340,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const ParagraphSpacingBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Đơn mới',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.fontSize,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Ca 14h-20h',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.color,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.fontSize,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  SvgPicture.asset('assets/icons/down.svg',
                                      width: 12),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '12.560.000đ',
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.fontSize,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  SvgPicture.asset(
                                    'assets/icons/up1.svg',
                                    width: 12,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.pink,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nông Thị Lan',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('12:30:40',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('Chưa gọi',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                        ],
                      ),
                      const ParagraphSpacingBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nông Thị Lan',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('17:24:40',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('Đủ món',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                        ],
                      ),
                      const ParagraphSpacingBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nông Thị Lan',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('12:30:40',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('Chưa gọi',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                        ],
                      ),
                      const ParagraphSpacingBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nông Thị Lan',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('17:24:40',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                          Text('Đủ món',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 16, // Khoảng cách từ cạnh dưới
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment
                .bottomCenter, // Căn giữa theo chiều ngang và đặt ở dưới cùng
            child: SvgPicture.asset(
              'assets/icons/add.svg',
              width: 56,
              height: 56,
            ),
          ),
        ),
      ]),
    );
  }
}
