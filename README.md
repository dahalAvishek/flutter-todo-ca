# flutter_todo

A new Flutter project.

## Prerequisites

- **Todoist Account:** You need a Todoist account to get started.
- **Flutter Environment:** Ensure flutter is installed in your machine.

#### 1. Login to Todoist

- **Login to Your Todoist Account:** Open the Todoist app or go to Todoist Web and log in to your account.
- **Get Your Access Token**:
  1. Navigate to the Settings menu.
  2. Go to the integrations section.
  3. Copy your access token.

#### 2. Clone the Repository

- **Clone the Project:** Open a terminal and clone the project repository from GitHub using the following command:
  ```sh
  git clone <YOUR_GITHUB_REPO_LINK>
  ```
- **Navigate to the project directory:**
  ```sh
  cd <PROJECT_DIRECTORY>
  ```

#### 3. Setup the environment variables

- **Create `.env` file:** In the root directory of the project, create a .env file.
  ```sh
  touch .env
  ```
- **Add your Todoist account access token:** : Open the .env file and add your Todoist access token as shown below:
  ```sh
  TODOIST_USER_TOKEN=<<YOUR_ACCESS_TOKEN>>
  ```
  Replace `<<YOUR_ACCESS_TOKEN>>` with the actual access token you copied from the Todoist app.

#### 3. Run the Flutter Todo App

- install libraries using
  ```sh
  flutter pub get
  ```
- **Run on Android:** You can run the app on an Android device or emulator using either VS Code or Android Studio.

### Project Architecture

- assets
- lib
  - **core**
    - _api:_ Configuration of Dio Client, Interceptor and API routes.
    - _constants:_ App Constants
    - _error:_ Failures, Exceptions
    - _extensions:_ Custom extensions
    - _helpers:_ Helper functions, mixins
    - _ui:_ Core UI elements and wrappers
    - _route:_ App routes, route builder
    - _services:_ Third-party services management
  - **layers**
    - **data:** Handle data storage and retrieval, interacting with databases, network services, or any external data sources.
      - models: Responsible for converting unstructured data (JSON, etc.) into Dart objects by using certain methods.
      - repositories: Implementation of Domain layer repository
      - sources: API, Local Storage
    - **domain:** Contains the business logic and rules of the application, independent of any external concerns like databases or user interfaces.
      - entities: Fundamental Business Objects. Only the fields that make sense from a "business standpoint" are held by an entity.
      - repositories: Abstraction layer between the domain and data layers, allowing the domain layer to interact with data sources without being tied to specific implementations.
      - usecases: Actions that the application can perform. Coordinates interactions between entities and repositories to accomplish business objectives.
    - **presentation:** Manages the user interface and interactions, focusing on how the app looks and behaves for users, separate from the underlying business logic and data handling.
      - [feature]
        - blocs: Presentation layer logic holders and manages state.
        - screens: Individual UI views or screens that users interact with.
        - widgets: UI elements for features' screen.
