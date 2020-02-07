String getKanjiUnicode(String character) {
  assert(character.length >= 1);
  return (character).codeUnitAt(0).toRadixString(16);
}
