package external;

@:buildXml('<include name="/Users/runner/work/Lime-HelloWorld/Lime-HelloWorld/Source/external/project/Build.xml" />')
@:include('include/ScreenUtils.hpp')
@:unreflective
extern class ScreenUtils
{
  @:native('getSafeAreaInsets')
  static function getSafeAreaInsets(top:cpp.RawPointer<Float>, bottom:cpp.RawPointer<Float>, left:cpp.RawPointer<Float>, right:cpp.RawPointer<Float>):Void;
}
