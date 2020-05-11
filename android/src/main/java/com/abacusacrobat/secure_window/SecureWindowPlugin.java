package com.abacusacrobat.secure_window;


import android.app.Activity;
import android.view.WindowManager.LayoutParams;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** SecureWindowPlugin */
public class SecureWindowPlugin implements MethodCallHandler {
  private final Activity activity;

  private SecureWindowPlugin(Registrar registrar){
    this.activity = registrar.activity();
  }


  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "secure_window");
    SecureWindowPlugin instance = new SecureWindowPlugin(registrar);
    channel.setMethodCallHandler(instance);
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (activity == null) {
      result.error("Secure Window plugin", "Secure Window plugin: no activity found", null);
    }

    if ("addFlags".equals(call.method)) {
      activity.getWindow().addFlags(LayoutParams.FLAG_SECURE);
      result.success(true);
    } else {
      result.notImplemented();
    }
  }
}
