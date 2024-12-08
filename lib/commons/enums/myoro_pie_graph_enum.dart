/// Enum to distinguish if a [MyoroPieGraph] is a pie or donut.
///
/// Pie = No empty space in the middle of the chart.
/// Donut = Space in the middle of the chart to place a title.
enum MyoroPieGraphEnum {
  /// Pie graph.
  pie,

  /// Donut.
  donut;

  bool get isPie => this == pie;
  bool get isDonut => this == donut;
}
