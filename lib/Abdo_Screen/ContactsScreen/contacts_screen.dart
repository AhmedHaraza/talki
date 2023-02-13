// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
      static const String route_ContactsScreen = 'ContactsScreen';
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff161616),
        body: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 16,
            right: 16,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Contacts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding:
                              const EdgeInsets.only(top: 5, left: 10),
                          constraints: const BoxConstraints(),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          fillColor: const Color(0xff1C1C1C),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Color(0xffFF4B26),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Your Contacts',
                  style: TextStyle(
                    color: Color(0xffFF4B26),
                    fontSize: 20,
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffFF4B26),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: Offset(0, 0)),
              ]),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xffFF4B26),
            child: const Icon(
              Icons.done,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
