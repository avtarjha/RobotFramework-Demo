# RobotFramework-Demo
This demo project will take you through initial steps on your journey with Robot Framework. Clone this repo and open in editor of your choice.

## Dependencies
3.9 > Python > 3.4

[SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
```
pip3 install robotframework-seleniumlibrary
```

[AppiumLibrary](https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)
```
pip3 install robotframework-appiumlibrary
```

[Requestslibrary](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#GET%20On%20Session)
```
pip3 install robotframework-requests
```

[Appium Server](https://github.com/appium/appium-desktop/tags) should be up and running.

## Project Structure
Project contains two folders - Tests and User Keywords

### Tests
As the name suggests, this directory contains sub directories for mobile, web and api which contain test case files/ test suites.

### User Keywords
This contains 2 resource files - Web Resource and Mobile Resource, both containing user keywords written using low level keywords from SeleniumLibrary and AppiumLibrary.

## Execution
https://dev.to/juperala/how-to-run-robot-framework-test-from-command-line-5aa
