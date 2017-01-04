# Peer Review Checklist

## Requirements
* The 'commit comment' should include a one-line description of the change and the Feature / Story ID.
* There should be evidence that the stories success criteria has been met.

## Coding conventions / Style Guide
* All custom code is cleanly written and easy to understand for other developers.
* All code is syntactically correct.
* Variable, function and method names should make it immediately obvious what's its for.
* Custom code is well commented, clearly describing its purpose.

## Documentation
* All custom code and configuration changes have been documented within an appropriate README.md file and reflects its current functionality.
* All documentation is written in good England. :)

## Architecture
* A [component-driven structure](https://en.wikipedia.org/wiki/Component-based_software_engineering#Software_component) has been adopted, with all scripts, markup and styles group by feature.
* All code is composed of reusable functions that can be re-purposed for other use without extensive refactoring.
* Business logic should be defined in separate services.
* All uncaught exceptions are gracefully handled.
* No conflicts are found in the logs.
* Redundant Modules or Modules with duplication functionality have been removed.

## Security
* Private parts of the application are properly protected.
* All user-submitted content (including input fields) are validated and filtered.
* Potential SQL injection exploits have been removed.
* Potential cross-site scripting (XSS) exploits have been removed.
* User and content access controls have been properly implemented.

## Accessibility
* The site is fully functional and correctly rendered on the following browsers and devices:

| Support Browsers                                       |
|--------------------------------------------------------|
| Windows: Internet Explorer 11                          |
| Windows: Google Chrome (latest version)                |
| Mac: Safari (latest version)                           |
| iPad Air: Safari (latest version)                      |
| iPhone 5s: Safari (latest version)                     |
| iPhone 6: Safari (latest version)                      |
| iPhone 6s: Safari (latest version)                     |

## Performance
* `<script>` elements should be as low as possible in document.
* Style-sheets should be in the document `<head>`.
* Expensive operations (e.g. CPU or bandwidth intensive) are cached.

## Automated Testing
* All of the automated tests successfully pass.

