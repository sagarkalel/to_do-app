import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromRGBO(244, 67, 54, 1),
                      Colors.black.withOpacity(0)
                    ],
                    radius: 0.51,
                  ),
                ),
                child: Container(
                  height: 10,
                  width: 10,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.yellow, Colors.black.withOpacity(0)],
                          radius: 0.25)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0),
                    Colors.blue.withOpacity(0.4),
                    Colors.black.withOpacity(0)
                  ],
                  stops: const [0.1, 0.7, 0.999],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
              )
            ],
          ),
          Column(
            children: [
              swithTile(
                  context,
                  "gluten-free",
                  "Only iclude gluten-free meals.",
                  activeFilters[Filter.glutenFree]!, (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.glutenFree, isChecked);
              }),
              swithTile(
                  context,
                  "lactose-free",
                  "Only iclude lactose-free meals.",
                  activeFilters[Filter.lactoseFree]!, (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.lactoseFree, isChecked);
              }),
              swithTile(context, "Vegetarian", "Only iclude vegetarian meals.",
                  activeFilters[Filter.vegetarian]!, (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegetarian, isChecked);
              }),
              swithTile(context, "Vegan", "Only iclude Vegan meals.",
                  activeFilters[Filter.vegan]!, (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegan, isChecked);
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget swithTile(context, String title, String subTitle, bool set,
      void Function(bool isChecked) onChanged) {
    return SwitchListTile(
      value: set,
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}

extension Capitalization on String {
  String capitalize() => this[0].toString().toUpperCase() + substring(1);
}
