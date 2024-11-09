import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuqr/features/home/domain/entities/table_qr.dart';

import '../../../core/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
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
    final screenSize = MediaQuery.of(context).size;
    List<TableQr> tables = getTableData();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Stack(children: [
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/images/logo.svg', width: 115),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/bell.svg', width: 24),
                          const ParagraphSpacingBox(
                            h: 20,
                            w: 20,
                          ),
                          SvgPicture.asset('assets/icons/search.svg',
                              width: 24),
                        ],
                      )
                    ],
                  ),
                ),
                const ParagraphSpacingBox(
                  h: 20,
                  w: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Xin chào!',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.fontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Phở Quỳnh Anh',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
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
                ),
                const ParagraphSpacingBox(
                  h: 20,
                  w: 20,
                ),
                Container(
                  height: 30,
                  color: const Color(0xffd9d9d9),
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
                        const ParagraphSpacingBox(
                          h: 20,
                          w: 20,
                        ),
                      ]),
                ),
                const ParagraphSpacingBox(
                  h: 20,
                  w: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Danh sách bàn',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/filter.svg',
                              width: 14),
                          const SizedBox(width: 5),
                          Text(
                            'Tất cả khu vực',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.color
                                  ?.withBlue(255),
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const ParagraphSpacingBox(
                  h: 20,
                  w: 20,
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 20),
                //   height: screenSize.width - 40,
                //   child: PageView.builder(
                //     controller: _pageController,
                //     itemCount: 4,
                //     itemBuilder: (context, pageIndex) {
                //       return GridView.builder(
                //         physics: const NeverScrollableScrollPhysics(),
                //         gridDelegate:
                //             const SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 3,
                //           mainAxisSpacing: 10,
                //           crossAxisSpacing: 10,
                //           childAspectRatio: 1,
                //         ),
                //         itemCount: 9,
                //         itemBuilder: (context, index) {
                //           final table = tables[index + pageIndex * 9];
                //           return GestureDetector(
                //             onTap: () {
                //               print("Đã chọn ô ${index + 1 + pageIndex * 9}");
                //             },
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 // color: Colors.blue[(index % 9 + 1) * 100],
                //                 color: Colors.white,
                //                 borderRadius: BorderRadius.circular(8),
                //                 boxShadow: [
                //                   BoxShadow(
                //                     color: Colors.grey.withOpacity(0.15),
                //                     spreadRadius: 5,
                //                     blurRadius: 10,
                //                     offset: const Offset(1, 1),
                //                   ),
                //                 ],
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Text(table.name,
                //                       style: TextStyle(
                //                         color: Theme.of(context)
                //                             .textTheme
                //                             .bodyLarge
                //                             ?.color,
                //                         fontSize: 12,
                //                         fontWeight: FontWeight.w400,
                //                       )),
                //                   Text(table.time,
                //                       style: TextStyle(
                //                         color: Theme.of(context)
                //                             .textTheme
                //                             .bodySmall
                //                             ?.color,
                //                         fontSize: Theme.of(context)
                //                             .textTheme
                //                             .bodySmall
                //                             ?.fontSize,
                //                         fontWeight: FontWeight.w500,
                //                       )),
                //                   Text(
                //                     table.status,
                //                     style: TextStyle(
                //                       color: table.status == 'Bàn trống'
                //                           ? const Color(0xffffb800)
                //                           : table.status == 'Chưa gọi'
                //                               ? const Color(0xffD60016)
                //                               : table.status == 'Đủ món'
                //                                   ? const Color(0xff1BC100)
                //                                   : table.status == 'Chờ món'
                //                                       ? const Color(0xffFF7A00)
                //                                       : Colors.black,
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.w400,
                //                     ),
                //                   ),
                //                   Text(
                //                     table.price,
                //                     style: TextStyle(
                //                       color: Colors.grey,
                //                       fontSize: Theme.of(context)
                //                           .textTheme
                //                           .bodySmall
                //                           ?.fontSize,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           );
                //         },
                //       );
                //     },
                //   ),
                // ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: screenSize.width - 40,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 4,
                    itemBuilder: (context, pageIndex) {
                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          final table = tables[index + pageIndex * 9];
                          bool isSelected =
                              (selectedIndex == index + pageIndex * 9);

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex =
                                    isSelected ? -1 : index + pageIndex * 9;
                              });
                              print("Đã chọn ô ${index + 1 + pageIndex * 9}");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.05),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                                border: isSelected
                                    ? Border.all(
                                        color: Colors.blue,
                                        width:
                                            2) // Bo tròn xung quanh ô khi chọn
                                    : Border.all(
                                        color: Colors
                                            .transparent), // Không có border khi chưa chọn
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          table.name,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.color,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          table.time,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.color,
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.fontSize,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          table.status,
                                          style: TextStyle(
                                            color: table.status == 'Bàn trống'
                                                ? const Color(0xffffb800)
                                                : table.status == 'Chưa gọi'
                                                    ? const Color(0xffD60016)
                                                    : table.status == 'Đủ món'
                                                        ? const Color(
                                                            0xff1BC100)
                                                        : table.status ==
                                                                'Chờ món'
                                                            ? const Color(
                                                                0xffFF7A00)
                                                            : Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          table.price,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.fontSize,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Dấu tích xanh nếu được chọn
                                  if (isSelected)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue,
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                const ParagraphSpacingBox(
                  h: 10,
                  w: 20,
                ),
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
                          width: 1,
                        ),
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
                const ParagraphSpacingBox(
                  h: 20,
                  w: 20,
                ),
                Container(
                  // width: 340,
                  // height: 340,
                  margin: const EdgeInsets.only(left: 20, right: 20),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        const ParagraphSpacingBox(
                          h: 20,
                          w: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  fontWeight: FontWeight.w600,
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
                        const ParagraphSpacingBox(
                          h: 10,
                          w: 20,
                        ),
                        const DottedLine(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          lineLength: double.infinity,
                          lineThickness: 2.0,
                          dashLength: 20.0,
                          dashColor: Color(0xFFE7E7E7),
                          dashRadius: 3.0,
                          dashGapLength: 10.0,
                          dashGapColor: Colors.white,
                          dashGapRadius: 10.0,
                        ),
                        const ParagraphSpacingBox(
                          h: 10,
                          w: 20,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Nông Thị Lan',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('12:30:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Chưa gọi',
                        //         style: TextStyle(
                        //           color: Colors.red,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        // const ParagraphSpacingBox(
                        //   h: 10,
                        //   w: 20,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Hoàng Tuấn Nam',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('17:24:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Đủ món',
                        //         style: TextStyle(
                        //           color: Colors.green,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        // const ParagraphSpacingBox(
                        //   h: 10,
                        //   w: 20,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Tiểu Long Nữ',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('12:30:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Chưa gọi',
                        //         style: TextStyle(
                        //           color: Colors.red,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        // const ParagraphSpacingBox(
                        //   h: 10,
                        //   w: 20,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Dương Quá',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('17:24:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Đủ món',
                        //         style: TextStyle(
                        //           color: Colors.green,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        // const ParagraphSpacingBox(
                        //   h: 10,
                        //   w: 20,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Cô Cô',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('17:24:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Đủ món',
                        //         style: TextStyle(
                        //           color: Colors.green,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        // const ParagraphSpacingBox(
                        //   h: 10,
                        //   w: 20,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Doãn Chí Bình',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('17:24:40',
                        //         style: TextStyle(
                        //           color: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.color,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //     Text('Đủ món',
                        //         style: TextStyle(
                        //           color: Colors.green,
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall
                        //               ?.fontSize,
                        //         )),
                        //   ],
                        // ),
                        ListView.builder(
                          shrinkWrap:
                              true, // Giúp ListView không chiếm hết không gian, thay vì sử dụng Expanded
                          itemCount: tables.length,
                          itemBuilder: (context, index) {
                            final tableData = tables[index];
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        tableData.description,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.color,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.fontSize,
                                        ),
                                        textAlign:
                                            TextAlign.start, // Căn trái cho tên
                                      ),
                                    ),
                                    // Cột 2: Thời gian
                                    Expanded(
                                      child: Text(
                                        tableData.time,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.color,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.fontSize,
                                        ),
                                        textAlign: TextAlign
                                            .center, // Căn giữa cho thời gian
                                      ),
                                    ),
                                    // Cột 3: Trạng thái
                                    Expanded(
                                      child: Text(
                                        tableData.status,
                                        style: TextStyle(
                                          color: tableData.status == 'Trống'
                                              ? Colors
                                                  .yellow // Trống -> Màu vàng
                                              : tableData.status == 'Chưa gọi'
                                                  ? Colors
                                                      .red // Chưa gọi -> Màu đỏ
                                                  : tableData.status == 'Đủ món'
                                                      ? Colors
                                                          .green // Đủ món -> Màu xanh lá cây
                                                      : tableData.status ==
                                                              'Chờ món'
                                                          ? Colors
                                                              .orange // Chờ món -> Màu cam
                                                          : Colors
                                                              .black, // Mặc định màu đen
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.fontSize,
                                        ),
                                        textAlign: TextAlign
                                            .end, // Căn phải cho trạng thái
                                      ),
                                    ),
                                  ],
                                ),
                                const ParagraphSpacingBox(
                                  h: 10,
                                  w: 20,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const ParagraphSpacingBox(
                  h: 100,
                  w: 20,
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
