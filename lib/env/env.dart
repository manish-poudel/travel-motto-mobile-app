import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'PEXEL_API_KEY')
  static const String pexelApiKey = _Env.pexelApiKey;
}
