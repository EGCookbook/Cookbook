# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

workspace 'Cookbook.xcworkspace'
project 'Cookbook.xcodeproj'

# Common & Services layers

def commonui_pod
  pod 'CommonUI', :path => 'Modules/CommonUI'
end

def models_pod
  pod 'Models', :path => 'Modules/Models'
end

def networking_pod
  pod 'Networking', :path => 'Modules/Networking'
end

def persistence_pod
  pod 'Persistence', :path => 'Modules/Persistence'
end

def resources_pod
  pod 'Resources', :path => 'Modules/Resources'
end

# Features/App Modules

def discover_module_pod
  pod 'Discover', :path => 'Modules/Discover'
end

def search_module_pod
  pod 'Search', :path => 'Modules/Search'
end

def personal_module_pod
  pod 'Personal', :path => 'Modules/Personal'
end

# DevPods

def development_pods
  commonui_pod
  models_pod
  networking_pod
  persistence_pod
  resources_pod
  
  discover_module_pod
  search_module_pod
  personal_module_pod
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

# Common/Services/Shared layers

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

target 'Persistence_Example' do
  use_frameworks!
  project 'Modules/Persistence/Example/Persistence.xcodeproj'
  
  persistence_pod
end

target 'Resources_Example' do
  use_frameworks!
  project 'Modules/Resources/Example/Resources.xcodeproj'
  
  resources_pod
end

# Feature/App Modules

target 'Discover_Example' do
  use_frameworks!
  project 'Modules/Discover/Example/Discover.xcodeproj'
  
  discover_module_pod
  networking_pod
end

target 'Search_Example' do
  use_frameworks!
  project 'Modules/Search/Example/Search.xcodeproj'
  
  search_module_pod
end

target 'Personal_Example' do
  use_frameworks!
  project 'Modules/Personal/Example/Personal.xcodeproj'
  
  personal_module_pod
end
