# Memodio

Test project for Memodio

## Overview
Develop a Flutter application that manages a Christmas list for Santa. The app will track
children's names, their home countries, and whether they have been naughty or nice. The
focus is on functionality and state management.

## Features

- View List: Display a list of children, showing their names, countries, and status
  (nice or naughty).
- Add New Kid: Implement functionality to add a new child to the list.
- Change Kid Status: Allow the status of each child (nice or naughty) to be changed
  by clicking on the child in the list.

## Requirements

- State Management: Use BloC for state management. 
- Data Model: Define a suitable model for representing children. 
- UI Design: Do not put too much energy on UI, focus on functionality. 
- Non-Persistence: The list does not need to be persisted after the app is closed. 
- Scope: Do not add any features beyond the ones listed above

## Challenges

1. Implementing with State Management:
   - Feel free to use a state management solution of your own choice, we
     recommend using BloC since this is the solution we use in our projects. Feel
     free to choose a different one though, there are no extra points for using
     BloC
   - Manage the state of the list and individual children effectively.

2. Dynamic List Management:
   - Dynamically add new children to the list
   - Update the status of children

3. User Interface:
   - Create a user interface that allows for easy viewing and updating of the list.

4. Testing:
   - If you think it makes sense, write a few tests for the business logic. Widgets
     must not be tested.