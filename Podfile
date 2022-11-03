# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

workspace 'Cookbook.xcworkspace'
project 'Cookbook.xcodeproj'

def commonui_pod
  pod 'CommonUI', :path => 'Modules/CommonUI'
end

def models_pod
  pod 'Models', :path => 'Modules/Models'
end

def networking_pod
  pod 'Networking', :path => 'Modules/Networking'
end

def resources_pod
  pod 'Resources', :path => 'Modules/Resources'
end

def development_pods
  commonui_pod
  models_pod
  networking_pod
  resources_pod
end

target 'Cookbook' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Cookbook
  development_pods
end

target 'CookbookTests' do
  inherit! :search_paths
  # Pods for testing
end

target 'CookbookUITests' do
  # Pods for testing
end

target 'CommonUI_Example' do
  use_frameworks!
  project 'Modules/CommonUI/Example/CommonUI.xcodeproj'
  
  commonui_pod
end

target 'Networking_Example' do
  use_frameworks!
  project 'Modules/Networking/Example/Networking.xcodeproj'
  
  networking_pod
end

target 'Resources_Example' do
  use_frameworks!
  project 'Modules/Resources/Example/Resources.xcodeproj'
  
  resources_pod
end
