package;

import lime.app.Application;
import lime.graphics.RenderContext;
import lime.app.Application;
import cpp.Pointer;

/**
 * The entry point of the application.
 */
class Main extends Application
{
  public function new()
  {
    super();

    trace('Hello World');

    
    Application.current.preloader.onComplete.add(function() {
      CrashHandler.init();
      var top:Float = -1;
      var bottom:Float = -1;
      var left:Float = -1;
      var right:Float = -1;

      ScreenUtils.getSafeAreaInsets(Pointer.addressOf(top).raw, Pointer.addressOf(bottom).raw, Pointer.addressOf(left).raw, Pointer.addressOf(right).raw);

      Application.current.window.alert('Top: ${top}\nBottom: ${bottom}\nLeft: ${left}\nRight: ${right}', "Notch Info");
    });
  }

  public override function render(context:RenderContext):Void
  {
    switch (context.type)
    {
      case CAIRO:
        var cairo:lime.graphics.CairoRenderContext = context.cairo;

        cairo.setSourceRGB(0.75, 1, 0);
        cairo.paint();

      case CANVAS:
        var ctx:lime.graphics.Canvas2DRenderContext = context.canvas2D;

        ctx.fillStyle = '#BFFF00';
        ctx.fillRect(0, 0, window.width, window.height);

      case DOM:
        var element:lime.graphics.DOMRenderContext = context.dom;

        element.style.backgroundColor = '#BFFF00';

      case FLASH:
        var sprite:lime.graphics.FlashRenderContext = context.flash;

        sprite.graphics.beginFill(0xBFFF00);
        sprite.graphics.drawRect(0, 0, window.width, window.height);

      case OPENGL, OPENGLES, WEBGL:
        var gl:lime.graphics.WebGLRenderContext = context.webgl;

        gl.clearColor(0.75, 1, 0, 1);
        gl.clear(gl.COLOR_BUFFER_BIT);

      default:
    }
  }
}
