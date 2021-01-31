require 'json'
package = JSON.parse(File.read('../../package.json'))

Pod::Spec.new do |s|
  s.name                      = "Permission-Camera"
  s.dependency                  "RNPermissions"

  s.version                   = package["version"]
  s.license                   = package["license"]
  s.summary                   = package["description"]
  s.authors                   = package["author"]
  s.homepage                  = package["homepage"]

  s.ios.deployment_target     = "10.0"
  s.tvos.deployment_target    = "11.0"
  s.osx.deployment_target     = "10.13"
  s.requires_arc              = true

  s.source                    = { :git => package["repository"]["url"], :tag => s.version }
  s.ios.source_files          = "ios/*.{h,m}"
  s.osx.source_files          = "macos/*.{h,m}"

end
