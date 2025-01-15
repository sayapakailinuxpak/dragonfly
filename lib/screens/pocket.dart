import 'package:dragonfly/data/my_pocket_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pocket extends StatelessWidget {
  const Pocket({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pocket",
          style: Theme.of(context).textTheme.titleMedium?.apply(
            fontWeightDelta: 1
          ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          FilterSection(),
          Expanded(child: BodySection())
        ],
      ),
    );
  }
}

class FilterSection extends StatefulWidget {
  

  const FilterSection({super.key});

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {

  List<String> pocketCategories = [
    "All", "Saving", "Family", "Investment", "PC Build"
  ];

  int? _selectedItemIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  12.0),
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 12.0,
                children: List.generate(
                  pocketCategories.length, (index) {
                    return ChoiceChip(
                      label: Text(
                        pocketCategories[index],
                      ),
                      color: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.focused)) {
                          return Theme.of(context).colorScheme.primary;
                        }
                        return Theme.of(context).colorScheme.background;
                      }),
                      selected: _selectedItemIndex == index,
                      onSelected: (selected) {
                        setState(() {
                          _selectedItemIndex = selected ? index : null;
                        }); 
                      },
                      side: _selectedItemIndex != index ? const BorderSide(color: Color(0xFFEBEBEB)) : BorderSide(color: Theme.of(context).colorScheme.primary),
                      backgroundColor: Theme.of(context).colorScheme.background,
                      selectedColor: Theme.of(context).colorScheme.background,
                      labelStyle: Theme.of(context).textTheme.labelMedium?.apply(
                        color: _selectedItemIndex != index ? Theme.of(context).colorScheme.onBackground : Theme.of(context).colorScheme.primary,
                      fontWeightDelta: 1
                      ),
                      showCheckmark: false,
                    );
                  }
                )
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          InkWell(
            child: SvgPicture.asset(
              "assets/icons/plus-icon.svg",
              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
            ),
            onTap: () {

            },
          )
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        mainAxisExtent: 230.0
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 21.0),
      shrinkWrap: true,
      itemCount: MyPocketModel.myPocketItems.length,
      itemBuilder:(context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(16.0)
          ),
          child: InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    MyPocketModel.myPocketItems[index].cardImageResource,
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    MyPocketModel.myPocketItems[index].pocketTitle,
                    style: Theme.of(context).textTheme.labelSmall?.apply(
                      color: Theme.of(context).colorScheme.onBackground
                    )
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                  child: Text(
                    MyPocketModel.myPocketItems[index].remainingBalance,
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeightDelta: 1
                    ),
                  ),
                )
              ],
            ),
            onTap: () {
        
            },
          ),
        ); 
      },
      
    );
  }

}