# Phase 1 Terminal App/API Data-Driven Hackathon
### Public Safety App: "Should I GTFO?"

----------------------

This is a simple MVC-patterned terminal app that was created during a 3 hour scratch-to-live-demonstration hackathon by the following developers, who are currently students at Dev Bootcamp:


Jason Allen - [jasonallenphotography on GitHub](https://github.com/jasonallenphotography)

Theo Paul - [theomarkkuspaul on GitHub](https://github.com/theomarkkuspaul)

Ayaz Uddin - [Ayaz2589 on GitHub](https://github.com/Ayaz2589)

Joseph Yoo - [notjoeyoo on GitHub](https://github.com/notjoeyoo)


Our app draws its data from NYC OpenData's [database of major felony offenses](https://data.cityofnewyork.us/Public-Safety/NYPD-7-Major-Felony-Incidents/hyij-8hr7) (which are murder, rape, robbery, assault, burglary, grand larceny, grand theft auto), specifically from the past whole calendar year (2015) and the current year (2016) to date.

### Overview
Goal: to build an app that tells users how safe their police precinct is in the morning, afternoon, nighttime, or based on a user-defined range of time. Our app will return the total count of the 7 major felonies committed during the selected window of time. If a precinct is over a threshold that we deemed particularly unsafe, the app will curtly recommend that the user immediately get out of that area!

### Future development
If we were to develop this app further (which we might!), we would love to accomplish the following:
  * Allow a user to lookup their police precinct by zipcode if they're curious
  * Allow a user to search for their neighborhood's safety by police precinct ID or by zipcode
  * Return a report of the number of crimes by type of crime in their neighborhood in addition to the sum total provided
  * Stretch goals
    1. Adapt this terminal application to a web and/or mobile app with a more layperson-accessible UI/UX
    2. Integrate Google Maps functionality for displaying neighborhood or precinct boundaries
    3. Utilize D3.js to return data visualizations of the queried crime reports

### Contributing

If you want to contribute, please open an issue to start a discussion. We're more than happy to review and accept pull requests for feature implementations and for bugs, too!
