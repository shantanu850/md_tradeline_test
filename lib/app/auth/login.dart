import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';
import 'package:iteriro/app/auth/sign_up.dart';
import 'package:iteriro/app/home/home_page.dart';
import '../../generated/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool isLoading = false;

  @override
  void initState() {
    passwordVisible = true;
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PopScope(
        canPop: false,
        child: BlurryModalProgressHUD(
          inAsyncCall: isLoading,
          blurEffectIntensity: 1.0,
          progressIndicator: const Center(child: CircularProgressIndicator()),
          dismissible: false,
          opacity: 0.4,
          child: Scaffold(
            backgroundColor: Colors.amber.shade50.withOpacity(0.5),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For personalized experience, please create an account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5400000214576721),
                            fontSize: 25,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //validator: AppValidator.validateEmail,
                          decoration: const InputDecoration(
                            hintText: "Your email",
                            hintStyle: TextStyle(
                                fontSize: 16),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16.0)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: passwordController,
                          obscureText: passwordVisible,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: "Your password",
                            hintStyle: const TextStyle(
                              fontSize: 16,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    passwordVisible = !passwordVisible;
                                  },
                                );
                              },
                            ),
                            //fillColor: WorkColors.background,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        FilledButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFFD4AF37)),
                              fixedSize:
                                  MaterialStateProperty.all(const Size(350, 56)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)))),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                            }
                            setState(() {
                              isLoading = !isLoading;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Row(children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "  OR  ",
                            style: TextStyle(fontSize: 14),
                          ),
                          Expanded(
                            child: Divider(color: Colors.black),
                          ),
                        ]),
                        const SizedBox(
                          height: 24,
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              fixedSize:
                                  MaterialStateProperty.all(const Size(350, 56)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)))),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                Assets.socialIconsApple,
                                color: Colors.white,
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 46,
                              ),
                              const Text(
                                "Continue with Apple",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        FilledButton(
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              //await WAuthProvider.of().google();
                              setState(() {
                                isLoading = false;
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                fixedSize:
                                    MaterialStateProperty.all(const Size(350, 56)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16)))),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.socialIconsGoogle,
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 46,
                                ),
                                const Text(
                                  "Continue with Google",
                                  style:
                                      TextStyle(fontSize: 16, color: Colors.black),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                          },
                          child: const Align(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don't have an account?",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: " Sign Up",
                                    style: TextStyle(
                                      //color: WorkColors.swBorderActive,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: Text(
                            'MD’s',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.38999998569488525),
                              fontSize: 26,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.    © M.D. TRADELINE 2024',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6399999856948853),
                              fontSize: 8,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
