# Demoblaze Karate API Test Suite

## Overview

The `demoblaze_karate` project provides a suite of automated API tests for the DemoBlaze website's user authentication system. Utilizing the Karate framework, we execute tests for both the signup and login endpoints, validating functionality against a variety of scenarios.

## Prerequisites

Before setting up the project, ensure you have the following installed:
- **Java Development Kit (JDK) 17**: Download from [Oracle's official website](https://www.oracle.com/java/technologies/downloads/#java17).
- **IntelliJ IDEA 2023.1.2 Community Edition**: Download from [JetBrains' official site](https://www.jetbrains.com/idea/download/).

## Project Structure

The project follows a Maven structure:
- **src/test/java**: Contains the test runner classes.
- **src/test/resources**: Contains the feature files with test scenarios written in Gherkin syntax.

## Setup

1. Clone the repository:

```shell
git clone https://github.com/zamiruko/devsu-test-api.git
cd devsu-test-api
```

2. Open the project in IntelliJ IDEA:
   - Select `Open or Import` in IntelliJ IDEA.
   - Navigate to the cloned repository and select the project folder.
   - IntelliJ IDEA will automatically set up the project based on the `pom.xml` file.

## Running Tests

Tests can be executed in two ways:

1. **IntelliJ IDEA**:
   - Navigate to `src/test/java/KarateTestRunner`.
   - Right-click on the file and select `Run 'KarateTestRunner'`.

2. **Maven Command**:
   - Open a terminal at the root of the project.
   - Execute the following command:

```shell
mvn test
```

## Karate Version

The test suite is implemented using Karate version 1.4.1. For more information and documentation on the framework, visit the [Karate GitHub wiki](https://github.com/karatelabs/karate/wiki/Get-Started:-Maven-and-Gradle).

## Test Scenarios

Test coverage includes:

- **Signup**
  - Creating a new user.
  - Attempting to create a user with an existing username.

- **Login**
  - Logging in with valid credentials.
  - Attempting to log in with incorrect credentials.

## Reports

Karate generates detailed reports upon the completion of test runs. Find HTML reports in the `target/karate-reports` directory. Open `karate-summary.html` with a web browser to review the test results.

## Continuous Integration

The test suite can be integrated into a CI/CD pipeline for automated execution. Sample configuration for a Jenkins pipeline is provided in the repository.


## License

This project is OpenSource.

## Contact

For any additional questions or comments, please open an issue in the [project repository](https://github.com/zamiruko/devsu-test-api).
