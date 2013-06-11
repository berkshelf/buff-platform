notification :off

guard "spork" do
  watch('Gemfile')
  watch('spec/spec_helper.rb')     { :rspec }
  watch(%r{^spec/support/.+\.rb$}) { :rspec }
end

guard "rspec", cli: "--color --drb --format Fuubar", all_on_start: false, all_after_pass: false do
  watch(%r{^spec/.+_spec\.rb$})

  watch(%r{^lib/(.+)\.rb$})          { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')       { "spec" }
  watch(%r{^spec/support/.+\.rb$})   { "spec" }
end
