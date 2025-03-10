
**<Note:>** This branch does not contain code for flavors, to use flavors checkout to **flavors** branch.

---------------------------
Boilerplate without Flavors
---------------------------

-   **assets**  

    -   It will be located at "project/assets"

    -   This folder will keep all the local resources that we will use in our application. It can further contain subcategories like "fonts", "images" etc having the corresponding folders.

    -   To make use of the contents of this folder we need to define it in pubspec.yaml.\
![](https://lh7-us.googleusercontent.com/BDVqACb4gUg_bC4v_dPyoKL9R7qjdb60ubbB5hUQFT0adO8DZI5Quokrkijv2YZOpSAhs3YhKoMa1sxanl_D4uLYUIYxbTZBntO5NxKmPfchoNNMI_Z6pqdRi3TbJ9kfD1QDOnTevW9AzHWn1YfsR7Y)

-   **lib**

    -   It will be located at "project/lib"

    -   This is the most important folder in a flutter project, everything that we code will sit here in most cases, if we are not using any platform-specific or native coding in our flutter application.

    -   It will contain the main entry point of a flutter application which is the "main.dart" file, although it does not remain the main entry point when we are using flavors in our app, that we will see later while implementing flavors.

    -   This boilerplate will contain following subcategories in lib folder:

        -   **constants**

        -   **controllers**

        -   **i18n**

        -   **models**

        -   **router**

        -   **store**

        -   **theme**

        -   **utils**

        -   **viewmodel**

        -   **views**

        -   **main.dart**

![](https://lh7-us.googleusercontent.com/mdDlla5Obi7NQpvzHIRtayUC-EHp_KkCMA1zOLh2EcZSyRdWvomJ_9p23Ztxt4qMF_A1bo1EZIui0wyTLcsi9IUNOMi1sF1ybRbs4mHQm55M0258OxnF0r8AgnJOoAd6oOHVPfT7FzNNkQdoSS6TMjc)

Let us understand one by one what each folder is going to do:

-   ### Constants 

     -   This folder will contain all the constants that we will be using in our application.

    -   It can be subcategorized into categories like api constants, string constants, message constants, enums etc.

![](https://lh7-us.googleusercontent.com/3EqvrUdpMm150OA4syX-RtbWIxCkyjE0wXSXcAtPKMyTFtap8yGmUtfsH1heVEGRBS1O3yBaH7iC2XvFwdfZlnp9bOMf1Zqwe-GtUsGuE3lIRp8u8Or-9sptZvd4gcZ38ZcBvnBhnJqeO0ZQCl1sHTU)

-   ### Controllers

    -   This folder will contain the code for all the network calls, in simpler language we can call it the "Network Layer" of our project.

    -   Essentially, it will contain a base api class which contains the generic method for all kind of requests i.e. GET, POST, PUT, DELETE, PATCH, in this project we are using Dio for making API calls.

-   ### i18n 

    -   This folder will contain json for using localization in the project.

    -   It can contain a json file for every language that we'll be using in the project.

-   ### Models

    -   This folder will contain the parsing models of every json object that we receive after a successful/unsuccessful API request. 

    -   It will contain a generic response class that will be used in the base API class we discussed earlier.

    -   Note: While making a response/request model make sure to remove the methods that are not in use, like toJson(), fromJson() etc.

-   ### Router

    -   This folder will contain our router class, that has all the navigation logic written as per Navigation 2.0 (route named navigation).

-   ### Store

    -   This folder will have any files or folders containing code for any local storage that we might use in our application.

    -   It can have files for SQLite, Shared preferences, secure storage, hive database etc.

-   ### Theme

    -   This folder will contain files for colors, themes, textstyles etc that will be used in the project.

-   ### Utils

    -   Utils folder will have folders like various helper functions, validation functions etc.

    -   Helper functions can have any general function that we can use in the entire application.

    -   Validation functions will contain validation logic for text inputs etc.

-   ### Viewmodels

    -   This folder will contain mostly all the business logic that will be used in the application.

    -   We are using Provider for state management in the given boilerplate.

    -   This will contain a generic viewmodel, which will have common functions or attributes like state variables, update UI methods etc for all the viewmodels.

    -   All the viewmodels that we make will be extension of the BaseViewModel in order to use the common functions.

-   ### Views

    -   This folder will contain the UI element of the application. 

    -   This will further be categorized into screens and widgets.

    -   Screen folder will contain the distinct screen UI.

    -   Widgets folder will contain common UI elements that will be used in the entire application or entire module of the project.

-   ### main.dart

    -   The main entry point of a flutter application which is the "main.dart" file, although it does not remain the main entry point when we are using flavors in our app, that we will see later while implementing flavors.

