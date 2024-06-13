import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view/authendication/viewmodel/authendication_Provider.dart';

List<SingleChildWidget> provider=[
  ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(), )
];