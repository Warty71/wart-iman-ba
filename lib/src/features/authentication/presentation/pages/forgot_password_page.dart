import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/common_widgets/custom_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController emailController = TextEditingController();

  Future passwordReset(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      // ignore: use_build_context_synchronously
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text("Reset uspješan. Provjerite svoj e-mail!"),
            );
          },
        );
      }
    } on FirebaseAuthException {
      // ignore
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    // Iman Logo
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/logo.jpg"),
                      ),
                    ),

                    // Text - Reset sifre
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Reset šifre",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff190c3f),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Text - Napravite novi racun
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Unesite svoj e-mail, i dobit ćete link za reset.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff626164),
                          letterSpacing: 0.32,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Text - Email + TextField
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail",
                            style: GoogleFonts.poppins(
                              color: const Color(0xff201d22),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          CustomTextField(
                            controller: emailController,
                            hintText: 'Vaš e-mail',
                            obscureText: false,
                          ),
                        ],
                      ),
                    ),

                    // Button - Reset
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Ink(
                        width: 325,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: const RadialGradient(
                            center: Alignment(-1.538, -3.615),
                            radius: 4,
                            colors: <Color>[
                              Color(0xff5959e4),
                              Color(0xff140632)
                            ],
                            stops: <double>[0, 0.99],
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            passwordReset(context);
                          },
                          borderRadius: BorderRadius.circular(24),
                          splashFactory: InkRipple.splashFactory,
                          child: const Center(
                            child: Text(
                              "Reset",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
