import 'package:flutter/material.dart';

class PortraitLoginWidget extends StatelessWidget {
  const PortraitLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 1, 113),
        body: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Expanded(
                  flex: 9,
                  child: Image.asset(
                    'images/1.png',
                  )),
              Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      )),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                  flex: 3,
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              const Spacer(flex: 2),
              const Expanded(
                  flex: 3,
                  child: Text(
                    'Please log into your existing account',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 15,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white)),
                          child: const Row(
                            children: [
                              Expanded(child: Spacer()),
                              Expanded(
                                  flex: 20,
                                  child: Text(
                                    'Your Email',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Spacer()
                            ],
                          ),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 15,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white)),
                          child: const Row(
                            children: [
                              Expanded(child: Spacer()),
                              Expanded(
                                  flex: 20,
                                  child: Text(
                                    'Your Password',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Spacer()
                            ],
                          ),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 15,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 53, 211, 106),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Text(
                            'Log in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ));
  }
}
