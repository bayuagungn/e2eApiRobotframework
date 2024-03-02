## Robot Framework Introduction
[Robot Framework](http://robotframework.org) 

[GitHub](https://github.com/robotframework/robotframework)

[PyPI](https://pypi.python.org/pypi/robotframework)

## Library
1. Install robotframework

## Installation Api
1. Install JSON Library

2. Install Request Library

## Installation Web
1. Install [XCode](https://apps.apple.com/us/app/xcode/id497799835?mt=12 "XCode")

2. Download and Install [Python](https://www.python.org/downloads/ "Python")

4. Check Python installation

    `python3 -V`

5. Install [pip](https://pip.pypa.io/ "pip")

    `pip3 -V`

6. Install Robot Framework

    `pip3 install robotframework`
    
7. Install Appium Library

    `pip3 install robotframework`
    
8. Download and install VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode")

10. Install [Robot Code](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode "Robot Code") extension from VSCode's Marketplace


## File organization
```
|- Web - Automation/                                              // Home folder for robot appium mobile automation project
  |- configs/AppiumConfigs.robot                                  // Appium configurations file
  |- datatest/constants/*.robot                                   // Robot files for the constants
  |- resources/keyword                                            // For Reusable keyword
  |- resources/object                                             // For Loactor or object repository
  |- resources/page                                               // For keyword in page 
  |- testcase/modul/*.robot                                       // Testcase with BDD format
|- Api - Automation/
  |- config/*.robot                                               // configurations file
  |- resources/keyword                                            // For Reusable keyword
  |- resources/schemaObject                                       // For file shecma JSON
  |- testcase/modul/*.robot                                       // Testcase test for API
|- results                                                        // Test results will be saving here
|- .gitignore                                                     // Excluded the unnecessary files in the repo
|- README.md                                                      // This file
```

## Usage
Starting from Robot Framework 3.0, tests are executed from the command line
using the ``robot`` script or by executing the ``robot`` module directly
as ``python -m robot``.

The basic usage is giving a path to a test (or task) file or directory as an
argument with possible command line options before the path

    python3 -m robot -v PLATFORM_NAME:ios -i Smoke -d results test-cases

"***-v***" refers to the variables. To replace a declared value within the code, you can specify a variable name and value.

"***-i***" refers to the tags. To run only a selected group of tests, you may specify a tag name.

"***-d***" refers to the test results. The location to save the test results can be specified here.

Run ``robot --help`` and ``rebot --help`` for more information about the command
line usage. For a complete reference manual see [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html "Robot Framework User Guide").
