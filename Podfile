# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

workspace 'Cookbook.xcworkspace'
project 'Cookbook.xcodeproj'

# Common & Services layers

def common_pod
  pod 'Common', :path => 'Modules/Common', :testspecs => ['Tests']
end

def commonui_pod
  pod 'CommonUI', :path => 'Modules/CommonUI'
end

def models_pod
  pod 'Models', :path => 'Modules/Models', :testspecs => ['Tests']
end

def networking_pod
  pod 'Networking', :path => 'Modules/Networking', :testspecs => ['Tests']
end

def persistence_pod
  pod 'Persistence', :path => 'Modules/Persistence', :testspecs => ['Tests']
end

def resources_pod
  pod 'Resources', :path => 'Modules/Resources'
end

def logger_pod
  pod 'Logger', :path => 'Modules/Logger', :testspecs => ['Tests']
end

# Features/App Modules

def discover_module_pod
  pod 'Discover', :path => 'Modules/Discover'
end

def recipedetails_module_pod
  pod 'RecipeDetails', :path => 'Modules/RecipeDetails', :testspecs => ['Tests']
end

def search_module_pod
  pod 'Search', :path => 'Modules/Search', :testspecs => ['Tests']
end

def personal_module_pod
  pod 'Personal', :path => 'Modules/Personal', :testspecs => ['Tests']
end

def recipeform_module_pod
  pod 'RecipeForm', :path => 'Modules/RecipeForm', :testspecs => ['Tests']
end

def onboarding_pod
  pod 'Onboarding', :path => 'Modules/Onboarding', :testspecs => ['Tests']
end

# DevPods

def development_pods
  common_pod
  commonui_pod
  models_pod
  networking_pod
  persistence_pod
  resources_pod
  logger_pod
  
  discover_module_pod
  recipedetails_module_pod
  search_module_pod
  personal_module_pod
  recipeform_module_pod
  onboarding_pod
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
end

target 'RecipeDetails_Example' do
  use_frameworks!
  project 'Modules/RecipeDetails/Example/RecipeDetails.xcodeproj'
  
  recipedetails_module_pod
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

target 'RecipeForm_Example' do
  use_frameworks!
  project 'Modules/RecipeForm/Example/RecipeForm.xcodeproj'
  
  recipeform_module_pod
end

target 'Onboarding_Example' do
  use_frameworks!
  project 'Modules/Onboarding/Example/Onboarding.xcodeproj'
  
  onboarding_pod
end

target 'Logger_Example' do
  use_frameworks!
  project 'Modules/Logger/Example/Logger.xcodeproj'
  
  logger_pod
end
