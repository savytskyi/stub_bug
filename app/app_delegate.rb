class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	Parse.setApplicationId("8ItkYyOGceW72PZoUK6qlWji5jW1U8hTRNqZJ7Xe", clientKey:"6wNolhzv0VnnPFG5hzT1r50X8iIeISikO8af8N0j")
    PFAnalytics.trackAppOpenedWithLaunchOptions nil
    PFTwitterUtils.initializeWithConsumerKey "UPtsN1teOrMXQiG4h6niiQ", consumerSecret: "swulX6F8oVjJgldQNcv46KLvUC3mLbaE0CQTBBNM"
    PFFacebookUtils.initializeFacebook
    PFFacebookUtils.logInWithPermissions(nil, block: nil)

    true
  end

  # parse + facebook
	def application(application, handleOpenURL: url)
    return PFFacebookUtils.handleOpenURL url
  end
 	
 # 	# parse + facebook
	def application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
    return PFFacebookUtils.handleOpenURL url
  end
end
