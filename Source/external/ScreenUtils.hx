package external;

@:buildXml('<include name="${this_dir}/Source/external/project/Build.xml" />')
@:include('ScreenUtils.hpp')
@:unreflective
extern class ScreenUtils
{
  @:native('getSafeAreaInsets')
  static function getSafeAreaInsets(top:cpp.RawPointer<Float>, bottom:cpp.RawPointer<Float>, left:cpp.RawPointer<Float>, right:cpp.RawPointer<Float>):Void;
}
