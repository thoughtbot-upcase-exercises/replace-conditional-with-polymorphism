# Refactoring / Replace Conditional With Polymorphism

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

Polymorphism allows us to have a single interface to handle entities of different types. In other words, we can send the same exact message to different objects and get different results in return.

In this exercise, you'll see that there's a method in the `PhonePlan` class that calculates the cost of a plan differently depending on its type. However, the class should only know how to retrieve the cost, not the details of how to calculate it. Let's extract some new classes to separate the concerns and hide those details.

[Read more about this topic](https://robots.thoughtbot.com/refactoring-replace-conditional-with-polymorphism).

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/replace-conditional-with-polymorphism.git
    cd replace-conditional-with-polymorphism
    bin/setup

Open up `lib/phone_plan.rb`. There you will see a single method named `cost`. Its corresponding tests are in `spec/lib/phone_plan_spec.rb`.

Replace the conditionals in `cost` with polymorphism. Each conditional should be represented by a new class, accompanied by their own tests.

When you're done, make sure that all the tests are passing by running:

    rake

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/replace-conditional-with-polymorphism/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/refactoring-replace-conditional-with-polymorphism/4646)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

replace-conditional-with-polymorphism is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
