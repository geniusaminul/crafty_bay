import 'package:crafty_bay/presentation/ui/Utils/app_colors.dart';
import 'package:flutter/material.dart';
class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onSizeSelected});
  final List<String> sizes;
  final Function(String) onSizeSelected;
  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  late String _selectedSize = widget.sizes.first ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text('Size', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
        const SizedBox(height: 8,),
        Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: widget.sizes.map((item){
            return GestureDetector(
              onTap: (){
                _selectedSize = item;
                widget.onSizeSelected(item);
                setState(() {

                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: _selectedSize == item ? AppColors.themeColor : Colors.black,
                    width: 1,

                  ),
                  color: _selectedSize ==item ? AppColors.themeColor : null,


                ),
                child: Text(item, style: TextStyle(color: _selectedSize == item ? Colors.white : null, fontSize: 14),),

              ),
            );
          }).toList(),


        )
      ],
    );
  }
}
