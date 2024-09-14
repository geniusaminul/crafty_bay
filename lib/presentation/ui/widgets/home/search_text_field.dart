import 'package:flutter/material.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, required this.textEditingController,
  });
final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder:const OutlineInputBorder(borderSide: BorderSide.none) ,
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search, size: 24, color: Colors.black38,),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          fillColor: Colors.grey.shade200,
          filled: true,

        )
    );
  }
}