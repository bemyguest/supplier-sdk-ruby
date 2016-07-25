Gem::Specification.new do |s|
  s.name = 'be_my_guest_suppliers_apiv_1'
  s.version = '1.0'
  s.summary = 'be_my_guest_suppliers_apiv_1'
  s.description = 'Please refer to  http://docs.bemyguestsuppliersapiv1.apiary.io/'
  s.authors = ['APIMATIC', 'Zeeshan Ejaz Bhatti']
  s.email = 'zeeshan@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('unirest', '~> 1.1.2')
  s.add_dependency('json_mapper', '~> 0.2.1')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
