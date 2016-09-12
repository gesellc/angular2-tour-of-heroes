# THE HERO EDITOR - Angular 2 for Dart

Once upon a time, we set out to build an app to help a staffing agency manage its stable of heroes. Even heroes need to find work.

And the adventure begins... [here](https://angular.io/docs/dart/latest/tutorial/).


## Journey Journal

### Chapter 1 - The Road We’ve Travelled

#### Let’s take stock of what we’ve built.

* Our Tour of Heroes uses the double curly braces of interpolation (a form of one-way data binding) to display the application title and properties of a __Hero__ object.
* We wrote a multi-line template using Dart's template strings to make our template readable.
* We can both display and change the hero’s name after adding a two-way data binding to the __&lt;input>__ element using the built-in __ngModel__ directive.
* The __ngModel__ directive also propagates changes to every other binding of the __hero.name__.

#### The Road Ahead

Our Tour of Heroes only displays one hero and we really want to display a list of heroes. We also want to allow the user to select a hero and display their details. We’ll learn more about how to retrieve lists, bind them to the template, and allow a user to select it in the next tutorial chapter.