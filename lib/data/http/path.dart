enum APIPath {
  getGooUranai,
}

extension APIPathExtension on APIPath {
  String? get value {
    switch (this) {
      case APIPath.getGooUranai:
        return 'getGooUranai';
    }
  }
}
