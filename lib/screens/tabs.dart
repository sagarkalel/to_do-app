import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:todo_app/providers/favorites_provider.dart';
import 'package:todo_app/screens/categories.dart';
import 'package:todo_app/screens/filters.dart';
import 'package:todo_app/screens/meals.dart';
import 'package:todo_app/widgets/decoration_widgets/show_case_view.dart';
import 'package:todo_app/widgets/main_drawer.dart';
import '../providers/filters_provider.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});
  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  GlobalKey globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ShowCaseWidget.of(context).startShowCase([globalKey]);
    });
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      await Navigator.push<Map<Filter, bool>>(
          context, MaterialPageRoute(builder: (_) => const FiltersScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = ref.watch(filteredMealsProvider);

    Widget activePage = CategoriesScreen(
      availabelMeals: availableMeals,
    );
    String activePageTitle = "Categories";
    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        meals: favoriteMeals,
      );
      activePageTitle = "Your Favorites";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(
              icon: ShowCaseView(
                  title: "Favorites items",
                  desc: "check here favorites items",
                  globalKey: globalKey,
                  child: const Icon(Icons.star)),
              label: "Favorites"),
        ],
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
    );
  }
}
