# LES Film Festival API

## Categories

### List categories
```
GET /categories
```

**Response**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|id  |integer  |Category id  |
|name   |string | Name of category|
|url   |string |URL to access category|

### Show a category
```
GET /categories/:category_id
```

**Response**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|id  |integer  |Category id  |
|name   |string | Name of category|
|films   |array |List of films in the category|

## Films

### Show a film and its reviews

```
GET /films/:film_id
```

**Response**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|id  |integer  |Film id  |
|name   |string | Name of film|
|image   |string |URL to film poster|
|description |string |About the film|
|reviews |array |List of reviews for the film|

### Create a review for a film

```
POST /films/:film_id/reviews/
```

**Params**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|content  |string  |The new review  |
|rating   |integer |An integer out of 10 that represents a 5 star rating|

### Show a specific review for a film and its comments

```
GET /films/:film_id/reviews/:review_id
```

**Response**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|id  |integer  |Film id  |
|content   |string | Content of the review|
|stars   |number |The star rating for the film|
|film |object |Associated film|
|user |object |User who left the review|
|comments |array |List of comments with the review|

## Review

### Create a comment for a review

```
POST /reviews/:review_id/comments
```
**Params**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|content     |string |The comment            |

## Users

### Create a user  
```
POST /users
```
**Params**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|first_name  |string |New user's first name  |
|last_name   |string |New user's last name   |
|email       |string |Account email          |
|password    |string |Account password       |
|image_url   |string |User's profile url     |
