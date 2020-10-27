import 'package:yaml/yaml.dart';
import 'dart:io';

class ApplicationConfiguration {
  YamlMap _yamlMap;

  ApplicationConfiguration(String configPath) {
    if (File(configPath).existsSync()) {
      _yamlMap = loadYaml(File(configPath).readAsStringSync());
    }
  }

  YamlMap getYaml() {
    return _yamlMap;
  }
}
