# DYI task (The company house)
As a part of this interview stage we would like to give you a coding task which solution will be the main topic of our next conversation.

## Instructions
There is a public register with all UK companies which could be downloaded from [here](http://download.companieshouse.gov.uk/en_output.html). Implement a web application which will prvoide an UI for searching in it.

### UI/UX Design
The required UI is quite simple - a text input for the search string with a submit (search) button on the right side.

![UI/UX Design](initial.png)

#### Loading state
When a search is executed the UI should enter into loading state. The input and the button should be disabled and the text of the button should change to "Searching..."

![Loading](loading.png)

#### Search results
When search results are found they should be displayed (name, company number, address) below the search area.

![Search results](results.png)

#### No results found
When no companies are found a text communicating this should be displayed below the search area.

![No results](no_results.png)

### Frontend
The main requirement for the front end of the application is that it should behave as a single page application, meaning that there should not be a full page reload when a search is executed.

### Backend
There are no specific requirements. It is up to you to decide where the data will reside (importing it in a database is preferred), how is it going to be organised and how the search will be implemented.
Use technologies with which you are most experienced.

### Git
The solution should be available in a public git (Github/Gitlab/Bitbucker) repository. Make sure that there is a good git history where the evolution of the project could be followed.

### Tests
Cover the application with sufficient amount of tests.
