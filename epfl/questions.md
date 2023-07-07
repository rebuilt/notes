#Questions
2. In User.rb before_validation :downcase_email looks like a symbol but is a method call to the private method.  How is this? The key seems to be that we are attaching a callback but I'm not sure what a callback is.
3. If an admin deletes a tip that has a handle to a deleted user, the site will no longer load.  Is this in scope?
4.  In sessions#create the flash parameter is set but is never used in the view.  The view relies on errors loaded in a user object.  
5. Ajax tests for tips creation are failing.  That wasn't part of our assignment.  Is this in scope?
  
