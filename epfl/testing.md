#Rails command line for tests
1. rails test
2. rails test:system
3. rails test:models


#Ruby gems and Capybara
Gemfile is in root of the application.  It defines what plugins/'gems' are installed.  

#Capybara commands
1. sleep(1.seconds)
2. visit()
3. fill_in()
4. click_on('Ruby', match: first)

#Generate test
1. rails generate system_test idea

#Test methods
1. assert
2. assert has_content?('some content')
1. assert current_path == root_path
1. assert current_url.include?('/styles/atoms')
3. fill_in
1. fill_in('q', with: 'Spain').send_keys(:enter)
4. click_on
5. visit path
6. assert_equal 2, 2
7. refute_equal 2, 0
1. refute false
8. model.first_updated_at 
9. model.updated_at
1. redirect_to path


