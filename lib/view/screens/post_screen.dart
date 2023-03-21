import 'package:cis_app_design/constants/colors.dart';
import 'package:cis_app_design/models/post_model.dart';
import 'package:cis_app_design/view/widgets/custom_text_form_field.dart';
import 'package:cis_app_design/view/widgets/separator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen(this.model, {super.key});
  final PostModel model;

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController commentController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      body: Padding(
        padding:
            const EdgeInsetsDirectional.only(top: 20.0, start: 8.0, end: 8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.model.image,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.model.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/CISLogo.png",
                        height: 20,
                        fit: BoxFit.contain,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "CIS Team",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Separator(),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.model.date,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Separator(),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.mode_comment_outlined,
                        color: AppColors.kGreen,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${widget.model.commentsNumber}",
                        style: const TextStyle(color: AppColors.kGreen),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.model.description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomFormField(
                    controller: nameController,
                    hint: "Your Name",
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a valid name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomFormField(
                    controller: commentController,
                    hint: "Write a comment...",
                    maxLength: 255,
                    maxLines: 3,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Message is required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            widget.model.commentsNumber++;
                            nameController.clear();
                            commentController.clear();
                            FocusManager.instance.primaryFocus?.unfocus();
                            showToast("Comment Sent Successfully ❤️");
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.kGreen,
                        minimumSize: const Size(double.maxFinite, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "SEND",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showToast(message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
