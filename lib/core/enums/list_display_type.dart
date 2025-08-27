enum ListDisplayType {
  list,
  carousel,
  grid;

  bool get isList => this == list;
  bool get isGrid => this == grid;
  bool get isCarousel => this == carousel;
}
