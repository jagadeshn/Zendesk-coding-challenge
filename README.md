# Zendesk-coding-challenge

Internship Coding Challenge - Ticket Viewer


Challenge Requirements

1. Connect to the Zendesk API.
2. Request the tickets for your account.
3. Page through tickets when more than 25 are returned.
4. Display tickets in a list.


Prerequisite Installations
NodeJS v10.16.0 or greater
NPM v6.9.0 or greater (At the time of making this documentation, NPM comes with the Node.js installation)



How to run (MacOS/Windows)

Download the repository to your local machine with the following code.

$ git clone https://github.com/jagadeshn/Zendesk-Coding-Challenge


Install all npm modules with the following code.
$ npm install

Run the program with the following code.
$ npm start

Run Tests

Navigate to the repository directory in your MacOS Terminal or equivalent command line application.

Run the tests with the following code
$ npm test

Architectural Design Overview

Assumptions
Users are familar with CLI usage.
Ticket requests to the Zendesk API will always return JSON with the same structure.
Error responses from the Zendesk API will always return JSON with the same structure.

Main Component Description
index.js : Program entry point, communicates data between components.
Ticket.js : Data model for tickets.
TicketFetcher.js : Makes requests to the Zendesk API and returns tickets.
Display.js : Prints output and takes user input.
Message.js : Contains general text for output, prompts, warnings, etc.

Design Choices
Connect to the Zendesk API & Request the tickets for your account
Ticket requests within my application use the NPM node-fetch module which is a node.js version of the vanilla js window.fetch method. The module is lightweight and easy to use as it retains much of the functionality from the vanilla version.

The application uses OAuth 2.0 as the primary method of communicating credentials, using the Bearer Token syntax, within the request Authorization header. 


Page through tickets when more than 25 are returned

The code was cleaner and more readable due as the server handled most of the pagination processing.


The following section contains links to resources I found super useful while building this application.

Zendesk docs quick links
Tickets
Basic Authentication
Pagination
OAuth 2.0
