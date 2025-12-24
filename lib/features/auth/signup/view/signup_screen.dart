import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup/features/auth/signup/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light
        ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.arrow_back_outlined,size: 24,color: Color(0xFF1A1C1E),)),
                        const SizedBox(height: 32,),
                        const Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight:
                              FontWeight.bold,
                              fontFamily: 'Inter',
                              height: 1.3,
                            letterSpacing: -0.64,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text("Create an account to continue!",
                        style: TextStyle(
                          letterSpacing: -0.12,
                          height: 1.4,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6C7278),
                          fontSize: 12,
                        ),),
                        const SizedBox(height: 32),
                        const Text("Full Name",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6C7278),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Plus Jakarta Sans',
                          height: 1.6,
                          letterSpacing: -0.24)
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            letterSpacing: -0.14,
                            color: Color(0xFF1A1C1E),
                          ),
                          decoration: InputDecoration(
                            hintText: 'name',
                              hintStyle: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                                letterSpacing: -0.14,
                                color: Color(0xFF9AA0A6), // lighter for placeholder
                              ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFFEDF1F3),
                                width: 1
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF2962FF),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text("Email",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6C7278),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                height: 1.6,
                                letterSpacing: -0.24)
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            letterSpacing: -0.14,
                            color: Color(0xFF1A1C1E),
                          ),
                          decoration: InputDecoration(
                              hintText: 'emailId@gmail.com',
                              hintStyle: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                                letterSpacing: -0.14,
                                color: Color(0xFF9AA0A6), // lighter for placeholder
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFEDF1F3),
                                      width: 1
                                  )
                              ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF2962FF),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text("Birth of date",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6C7278),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                height: 1.6,
                                letterSpacing: -0.24)
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            letterSpacing: -0.14,
                            color: Color(0xFF1A1C1E),
                          ),
                          decoration: InputDecoration(
                              hintText: 'DD/MM/YYYY',
                              hintStyle: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                                letterSpacing: -0.14,
                                color: Color(0xFF9AA0A6), // lighter for placeholder
                              ),
                              suffixIcon: const Icon(Icons.calendar_today_outlined,color: Color(0xFFACB5BB),size: 16,),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFEDF1F3),
                                      width: 1
                                  )
                              ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF2962FF),
                                width: 1,
                              ),
                            ),
                          ),
                          onTap: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime(2000),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        const Text("Birth of date",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6C7278),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                height: 1.6,
                                letterSpacing: -0.24)
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
