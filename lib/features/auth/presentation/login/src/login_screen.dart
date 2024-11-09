import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuqr/core/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:menuqr/features/menu/menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ParagraphSpacingBox(h: 97, w: 20,),
              Center(child: SvgPicture.asset('assets/images/menuqr.svg')),
              const SizedBox(height: 60),
              Text(
                'Số điện thoại',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const ParagraphSpacingBox(h: 10, w: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nhập số điện thoại',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
              const ParagraphSpacingBox(h: 20, w: 20,),
              Text(
                'Mật khẩu',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                ),
              ),
              const ParagraphSpacingBox(h: 10, w: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nhập mật khẩu',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset('assets/icons/eye.svg'),
                    onPressed: () {},
                  )
                ),
                
              ),
              const ParagraphSpacingBox(h: 10, w: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        },
                        child: SvgPicture.asset(
                          _isChecked
                              ? 'assets/icons/check_1.svg'
                              : 'assets/icons/check_0.svg',
                        ),
                      ),
                      const ParagraphSpacingBox(h: 20, w: 20,),
                      Text(
                        'Lưu mật khẩu',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall?.fontSize,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      color: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.color
                          ?.withBlue(255),
                      fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider<BottomNavCubit>(
                            create: (_) => BottomNavCubit(),
                            child: const BottomMenu(),
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Container(
                        width: 345,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70.0),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.fontSize,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: SvgPicture.asset('assets/icons/user.svg', width: 50, height: 50,),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Chưa có tài khoản? ',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                            ),
                          ),
                          TextSpan(
                            text: 'Đăng ký ngay',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.color
                                  ?.withBlue(255),
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                              fontWeight: FontWeight.w400,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                log('Đăng ký ngay được ấn');
                              },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
