# THE HERO EDITOR - Angular 2 for Dart

Once upon a time, we set out to build an app to help a staffing agency manage its stable of heroes. Even heroes need to find work.

And the adventure begins... [here](https://angular.io/docs/dart/latest/tutorial/).


## Journey Journal

### Chapter 1 - We build a simple hero editor

#### The Road We’ve Travelled

Let’s take stock of what we’ve built.

* Our Tour of Heroes uses the double curly braces of interpolation (a form of one-way data binding) to display the application title and properties of a __Hero__ object.
* We wrote a multi-line template using Dart's template strings to make our template readable.
* We can both display and change the hero’s name after adding a two-way data binding to the __&lt;input>__ element using the built-in __ngModel__ directive.
* The __ngModel__ directive also propagates changes to every other binding of the __hero.name__.

#### The Road Ahead

Our Tour of Heroes only displays one hero and we really want to display a list of heroes. We also want to allow the user to select a hero and display their details. We’ll learn more about how to retrieve lists, bind them to the template, and allow a user to select it in the next tutorial chapter.

### Chapter 2 - We build a master/detail page with a list of heroes

#### The Road We’ve Travelled

Here’s what we achieved in this chapter:

* Our Tour of Heroes now displays a list of selectable heroes
* We added the ability to select a hero and show the hero’s details
* We learned how to use the built-in directives __ngIf__ and __ngFor__ in a component’s template

#### The Road Ahead

Our Tour of Heroes has grown, but it’s far from complete. We can't put the entire app into a single component. We need to break it up into sub-components and teach them to work together as we learn in the next chapter.

### Chapter 3 - We refactor the master/detail view into separate components

#### The Road We’ve Travelled

Let’s take stock of what we’ve built.

* We created a reusable component
* We learned how to make a component accept input
* We learned to bind a parent component to a child component.
* We learned to declare the application directives we need in a __directives__ list.

#### The Road Ahead

Our Tour of Heroes has become more reusable with shared components.

We're still getting our (mock) data within the __AppComponent__. That's not sustainable. We should refactor data access to a separate service and share it among the components that need data.

We’ll learn to create services in the next tutorial chapter.

### Chapter 4 - We create a reusable service to manage our hero data calls

#### The Road We’ve Travelled

Let’s take stock of what we’ve built.

* We created a service class that can be shared by many components.
* We used the __ngOnInit__ Lifecycle Hook to get our heroes when our __AppComponent__ activates.
* We defined our __HeroService__ as a provider for our __AppComponent__.
* We created mock hero data and imported them into our service.
* We designed our service to return a Future and our component to get our data from the Future.

#### The Road Ahead

Our Tour of Heroes has become more reusable using shared components and services. We want to create a dashboard, add menu links that route between the views, and format data in a template. As our app evolves, we’ll learn how to design it to make it easier to grow and maintain.

We learn about Angular Component Router and navigation among the views in the next tutorial chapter.
