#exit_code_1 = system("TEST_ITERATION=1 DISABLE_SPRING=true RAILS_ENV=test bundle exec parallel_rspec -n 2 --runtime-log ./runtime_rspec.opts #{$files} -e 'ruby -e \"puts %[hello from process #{ENV[:TEST_ENV_NUMBER.to_s].inspect}]\"'")
#puts exit_code_1
system("bundle exec parallel_rspec spec/ -n 2")
