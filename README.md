# Rails Assessment

It's time to put our Rails know-how to the test.

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, focus and code

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `rake db:migrate` and `rake db:seed` to get started.

## The Domain

The Power Ninjas have request your help! Here at BT we tend to consume lots of sweets. Specially sweets... WE-LOVE-SWEETS.

![img](https://media.giphy.com/media/HGe4zsOVo7Jvy/giphy.gif)

Visiting `/sweets` will list all of the sweets. Visiting `/vendors` will list all of our sweet's vendors. The Models, Views and Controllers for the sweets and vendors resources already exist. The problem is that we don't have a way to associate all the sweets with their vendors. **Vendors can sell many different sweets and sweets can be sold by many different vendors.**

## Instructions / Deliverables

***To help complete this task we spell out the required steps below. Look through them carefully to get a sense of the requirements of this code challenge, then tackle them one by one.***

1. On the vendors index page, clicking on a vendor's name should take us to the vendor's show view.

2. On the sweets index page, clicking on a sweet's name should take us to the sweet's show view.

3. Create the `vendor_sweet` join table and associate vendors and sweets. (It may be helpful to use your `rails console` to create some join records after database schema is set up.)

4. On the sweet show view, include the sweet's name and have a list of all the vendors that sell this sweet.

5. On this show view, clicking on a vendor should take you to that vendor's show view.

6. The vendor's show view should list all the sweets they sell.

7. On the vendor's show view there should be a form that will allow us to associate the sweet with a vendor.

8. The `vendor_sweet` association form will allow us to:
  * Select a sweet from a dropdown.
  * Leave a comment.

9. Make sure a user cannot create a `vendor_sweet` without a comment & a sweet.

10. After submitting this form, we should end up in the same view we were just on, but this time we should be able to see the sweet along with its comment.

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular vendor? What URL should create the vendor_sweet association? What controller actions are associated?

+ When creating the vendor_sweet association think about the various ways [Rails allows us to define associations between models](http://guides.rubyonrails.org/association_basics.html)

+ Read through this documentation if your having a bit of trouble figuring out how to make the [dropdown](http://guides.rubyonrails.org/form_helpers.html#making-select-boxes-with-ease)

+ Also remember that [Validations are very important](http://guides.rubyonrails.org/active_record_validations.html)

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
1. `git add` and `git commit` your changes.
1. From you custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
1. Send the patch file to your instructor on Connect before the specified time. Remember, you can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
