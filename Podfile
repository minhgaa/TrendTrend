
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12.0
       config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      end
    end
  end
 end

target 'trendtrend' do
  use_frameworks!
  pod 'Alamofire'
  pod 'Firebase'
  pod 'Firebase/Auth'
  pod 'Firebase/Analytics'
  pod 'Firebase/Core'
  pod 'Firebase/Installations'
end
