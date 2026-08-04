# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

# lib/sms_provider.rb defines SMSProvider, but Zeitwerk derives SmsProvider from
# the file name. The classic autoloader tolerated the mismatch; Zeitwerk does
# not, so the constant has to be spelled out for it.
Rails.autoloaders.each do |autoloader|
  autoloader.inflector.inflect('sms_provider' => 'SMSProvider')
end
