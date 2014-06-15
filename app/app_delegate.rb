class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    memos_controller = MemosController.new
    nav = UINavigationController.alloc.initWithRootViewController(memos_controller)

    @window.rootViewController = nav
    @window.makeKeyAndVisible

    true
  end
end
