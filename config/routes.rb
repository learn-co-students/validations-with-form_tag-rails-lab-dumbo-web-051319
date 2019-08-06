Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:authors, only:[:show,:new,:edit,:create,:update ]
  resources:posts, only:[:show,:new,:edit,:create,:update ]

end

# Requirements
# Validations
# Add validations to Author such that...
# name is not blank
# email is unique
# phone_number is exactly 10 digits long
# Add validations to Post such that...
# title is not blank
# content is at least 100 characters long
# category is either "Fiction" or "Non-Fiction"
# =================== Controller action ==========================================
# Basic Routes & Controllers
# Create controllers for both models.
# Create show, new, edit, create, and update routes for both models.
# Define controller actions for show, new, and edit.
# Define the "valid path" for the create and update controller actions.
# Define the "invalid path" for the create and update controller actions.
# ====================== form requirements==========================================
# Forms
# Create forms with form_tag for both models' new and edit actions.
# Prefill already-submitted forms with the invalid data when re-rendering.
# Display a list of errors at the top of forms when an invalid action is attempted. They should be contained in an element with id error_explanation, and each error should have its own <li>.
# Conditionally wrap each field in a .field_with_errors div if it has errors.
