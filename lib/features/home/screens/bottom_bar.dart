import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:riyadh_kmcc_new/features/auth/controller/auth_controller.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../../core/globals.dart';
import '../../auth/screens/forgot_password.dart';
import '../../events/screens/events_screen.dart';
import '../../news/screens/news.dart';
import '../../profile/screens/profile_page.dart';
import 'home_screen.dart';

// int selectedIndex = 0;

final selectedIndexProvider = StateProvider<int>((ref) {
  return 0;
});
final signInProvider = StateProvider<bool>((ref) {
  return true;
});

class BottomBar extends ConsumerStatefulWidget {
  const BottomBar({super.key});

  @override
  ConsumerState<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends ConsumerState<BottomBar>
    with SingleTickerProviderStateMixin {
  final List<Widget> _widgets = [
    const HomeScreen(),
    const EventScreen(),
    const NewsPage(),
    const ProfilePage(),
  ];

  bool canPop = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    getSurvey();
  }

  getSurvey() {
    if (token.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ref
            .read(authControllerProvider.notifier)
            .getPendingSurveys(context: context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectedIndex = ref.watch(selectedIndexProvider);
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (selectedIndex == 0) {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  title: Text(
                    "Do you want to exit?",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () async {
                        // Navigator.of(dialogContext).pop();
                        canPop = false;
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        canPop = true;
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Exit",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          } else {
            ref.read(selectedIndexProvider.notifier).update((state) => 0);
          }
          return canPop;
        },
        child: _widgets[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 10,
        backgroundColor: Colors.white,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 11.sp,
          color: const Color(0xff000000),
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xff4a4a4a99).withOpacity(0.6),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 11.sp,
          color: const Color(0xff000000),
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if (selectedIndex == value) {
            return;
          }
          if (token.isEmpty && value != 0) {
            ref.read(signInProvider.notifier).update((state) => true);
            showSignUpSheet(context);
          } else {
            ref.read(selectedIndexProvider.notifier).update((state) => value);
            setState(() {});
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home_icon.svg",
              height: 25.sp,
              colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/events_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/news_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 2
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "KMCC News",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/profile_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 3
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

Future<dynamic> showSignUpSheet(BuildContext context) {
  var signupKey = GlobalKey<FormState>();
  var signInKey = GlobalKey<FormState>();
  TextEditingController membershipIdController =
      TextEditingController(text: '');
  TextEditingController iqamaController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController passController = TextEditingController(text: '');
  TextEditingController confirmPassController = TextEditingController(text: '');
  RoundedLoadingButtonController signUpController =
      RoundedLoadingButtonController();
  RoundedLoadingButtonController signInController =
      RoundedLoadingButtonController();
  final showPassProvider = StateProvider<bool>((ref) {
    return false;
  });
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    enableDrag: true,
    isScrollControlled:
        true, // Allow the bottom sheet to resize for the keyboard
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30.sp),
      ),
    ),
    builder: (bottomSheetcontext) {
      return Consumer(builder: (context, ref, child) {
        bool showPass = ref.watch(showPassProvider);
        return ref.watch(signInProvider)
            ? Form(
                key: signInKey,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height *
                        0.6, // Limit the height of the bottom sheet
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context)
                            .viewInsets
                            .bottom, // Adjust for keyboard
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize
                            .min, // Ensure the column takes minimal height
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.sp, left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "WELCOME",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                                Text(
                                  "login to continue",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 22.sp),
                          Container(
                            color: const Color(0xffF3F3F3),
                            padding: EdgeInsets.only(
                                top: 32.sp, left: 20.sp, right: 20.sp),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: membershipIdController,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Membership ID";
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: "Membership ID",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.sp),
                                TextFormField(
                                  obscureText: showPass,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  controller: passController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Password";
                                    } else if (value.length < 6) {
                                      return "Enter min 6 characters";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(showPass
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        ref
                                            .read(showPassProvider.notifier)
                                            .update((state) => !state);
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPassword(),
                                          ));
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff171766),
                                      ),
                                    ),
                                  ),
                                ),
                                RoundedLoadingButton(
                                  controller: signInController,
                                  onPressed: () async {
                                    signInController.start();
                                    if (signInKey.currentState != null &&
                                        signInKey.currentState!.validate()) {
                                      await ref
                                          .watch(
                                              authControllerProvider.notifier)
                                          .signIn(
                                            context: context,
                                            sheetContext: bottomSheetcontext,
                                            memberId:
                                                membershipIdController.text,
                                            password: passController.text,
                                          );
                                      signInController.reset();
                                    }
                                    signInController.reset();
                                  },
                                  borderRadius: 10.sp,
                                  color: const Color(0xff7452FF),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 36.sp),
                                Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Don't have a membership?",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff4A4A4A)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          ref
                                              .read(signInProvider.notifier)
                                              .update((state) => false);
                                        },
                                        child: Text(
                                          "Sign-up",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff4A4A4A),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 48.sp),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Form(
                key: signupKey,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(bottomSheetcontext).size.height *
                        0.8, // Limit the height of the bottom sheet
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(bottomSheetcontext)
                            .viewInsets
                            .bottom, // Adjust for keyboard
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize
                            .min, // Ensure the column takes minimal height
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.sp, left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Join KMCC Today!",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () =>
                                          Navigator.of(bottomSheetcontext)
                                              .pop(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 19.sp),
                          Container(
                            color: const Color(0xffF3F3F3),
                            padding: EdgeInsets.only(
                                top: 26.sp, left: 20.sp, right: 20.sp),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: membershipIdController,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Membership ID";
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Membership ID",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.sp),
                                TextFormField(
                                  controller: iqamaController,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Iqama number";
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Iqama number",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.sp),
                                Container(
                                  padding: EdgeInsets.all(2.sp),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: IntlPhoneField(
                                    controller: phoneController,
                                    initialCountryCode: "SA",
                                    autovalidateMode: AutovalidateMode.disabled,
                                    validator: (phone) {
                                      if (phoneController.text.isEmpty) {
                                        return 'Phone number is required';
                                      }
                                      return null; // Uses package's built-in validation
                                    },
                                    dropdownIconPosition: IconPosition.trailing,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Mobile Number",
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4A4A4A),
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff4A4A4A),
                                    ),
                                    dropdownTextStyle: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff3B3B3B),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.sp),
                                TextFormField(
                                  controller: passController,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Password";
                                    } else if (value.length < 6) {
                                      return "Enter min 6 characters";
                                    }
                                    return null;
                                  },
                                  obscureText: showPass,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(showPass
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        ref
                                            .read(showPassProvider.notifier)
                                            .update((state) => !state);
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.sp),
                                TextFormField(
                                  controller: confirmPassController,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Password";
                                    } else if (value.length < 6) {
                                      return "Enter min 6 characters";
                                    } else if (passController.text !=
                                        confirmPassController.text) {
                                      return "Passwords do not match";
                                    }
                                    return null;
                                  },
                                  obscureText: showPass,
                                  decoration: InputDecoration(
                                    labelText: "Confirm Password",
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff333333),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(showPass
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        ref
                                            .read(showPassProvider.notifier)
                                            .update((state) => !state);
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25.sp,
                                ),
                                Text(
                                  "By creating your account you agree to our",
                                  style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    minimumSize:
                                        Size.zero, // Remove default padding
                                    padding: EdgeInsets
                                        .zero, // Remove default padding
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // Reduce tap target size
                                  ),
                                  child: Text(
                                    "terms and conditions",
                                    style: GoogleFonts.inter(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff392A59),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 26.sp,
                                ),
                                RoundedLoadingButton(
                                  controller: signUpController,
                                  onPressed: () async {
                                    signUpController.start();
                                    if (signupKey.currentState != null &&
                                        signupKey.currentState!.validate()) {
                                      await ref
                                          .watch(
                                              authControllerProvider.notifier)
                                          .signUp(
                                            context: context,
                                            sheetContext: bottomSheetcontext,
                                            iqama: iqamaController.text,
                                            memberId:
                                                membershipIdController.text,
                                            password: passController.text,
                                            phoneNo: phoneController.text,
                                          );
                                      membershipIdController.clear();
                                      iqamaController.clear();
                                      phoneController.clear();
                                      passController.clear();
                                      confirmPassController.clear();
                                      signUpController.reset();
                                    }
                                    signUpController.reset();
                                  },
                                  borderRadius: 10.sp,
                                  color: const Color(0xff7452FF),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        "Sign Up",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 36.sp),
                                Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Already have an account?",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff4A4A4A)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          ref
                                              .read(signInProvider.notifier)
                                              .update((state) => true);
                                        },
                                        child: Text(
                                          "Login",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff4A4A4A),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 48.sp),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
      });
    },
  );
}
