# Furry Friends API
testasdasd
## Overview

The Furry Friends API is a Spring Boot application designed to manage pets, specifically cats and dogs. It provides endpoints to create, read, update, and delete pet records.


## API Endpoints

### Common Endpoints for All Pets

- **GET** All Pets
    ```http
    GET /pets
    ```

- **GET** a Pet by ID
    ```http
    GET /pets/{id}
    ```

- **CREATE** a Pet
    ```http
    POST /{type}
    ```
    - Request Body:
        ```json
        {
          "name": "PetName", // string
          "age": PetAge, // integer
          "specificAttribute": "SpecificValue"  // varies by pet type
        }
        ```
    - `type` Pet Type.
    - `specificAttribute` varies by pet type:
        - **Cat**: indoor (boolean), color (string)
        - **Dog**: trained (boolean), breed (string)
        - **Hamster**: isCute (boolean), color (string)
        - **Bird**: canFly (boolean), color (string)

- **UPDATE** a Pet
    ```http
    PATCH /{type}/{id}
    ```
    - Request Body:
        ```json
        {
          "specificAttribute": "UpdatedSpecificValue"
        }
        ```
    - `type` Pet Type.
    - `specificAttribute` varies by pet type:
        - **Cat**: indoor (boolean), color (string)
        - **Dog**: trained (boolean), breed (string)
        - **Hamster**: isCute (boolean), color (string)
        - **Bird**: canFly (boolean), color (string)


- **DELETE** a pet
    ```http
    DELETE /pets/{id}
    ```
