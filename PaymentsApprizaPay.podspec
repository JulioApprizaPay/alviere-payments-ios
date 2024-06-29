Pod::Spec.new do |s|
  s.name              = 'PaymentsApprizaPay'
  s.version           = '0.9.20'
  s.author            = { 'Julio Torres' => 'julio.torres@apprizapay.com' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/JulioApprizaPay/alviere-payments-ios/releases/download/#{s.version.to_s}/Payments.xcframework.zip", :sha256 => '4a503df0396bb4394ebcc782b0d4601a21ebb7bf01fe41011b48e4a38dce7af3' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '11.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'Payments.xcframework'
  s.dependency 'AlCore', '0.9.20'
  s.dependency 'AlCamera', '1.0.6'
end