<h1 align='center'>Mental checklist when developing</h1>

<h2 align='center'>What files does every widget have?</h2>

1. `Widget`: `foo.dart` & `foo_test.dart`;
1. `ThemeExtension`: `foo_theme_extension.dart` & `foo_theme_extension_test.dart`;
1. Widget showcase in storyboard: `foo_widget_showcase.dart` & `foo_widget_showcase_test.dart`;
1. `ThemeExtension` of widget showcase: `foo_widget_showcase_theme_extension.dart` & `foo_widget_showcase_theme_extension_test`;

<h2 align='center'>What do I need to make sure is set when creating widgets?</h2>

1. Make sure said widget is added to `widget_listing_enum.dart` so it is able to be views in the storyboard.
