import 'package:flutter/material.dart';
import 'package:rewind/resources/app_texts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppTexts.verificationCodeText,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                SizedBox(
                  height: 80,
                  width: 50,
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    maxLength: 1,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      counterText: "",
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 80,
                  width: 50,
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    maxLength: 1,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      counterText: "",
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 80,
                  width: 50,
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    maxLength: 1,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      counterText: "",
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const SizedBox(
                  height: 80,
                  width: 50,
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    maxLength: 1,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      counterText: "",
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              AppTexts.receivedCodeText,
              style: const TextStyle(fontFamily: 'Poppins', color: Colors.grey),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            side: BorderSide(color: Colors.black)))),
                onPressed: () {},
                child: Text(AppTexts.newCode,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    )))
          ])
        ],
      ),
    );
  }
}
