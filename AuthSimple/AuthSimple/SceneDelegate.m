//
//  SceneDelegate.m
//  AuthSimple
//
//  Created by Ina on 5.07.21.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions  API_AVAILABLE(ios(13.0)){
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    UIWindowScene * windowScene = (UIWindowScene*) scene;
      _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
      ViewController* initialViewController = [[ViewController alloc] init];
      //UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:initialViewController];
      //_window.rootViewController = navController;
      _window.rootViewController = initialViewController;
      [_window makeKeyAndVisible];
      _window.windowScene = windowScene;
}

@end
