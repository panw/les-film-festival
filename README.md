# LES Film Festival API

## Categories

### List categories
```
GET /categories
```

### Show categories
```
GET /categories/:category_id
```

## Films

### View a film and its reviews

```
GET /films/:film_id
```

### View a specific review for a film

```
GET /films/:film_id/reviews/:review_id
```

### Write a review for a film

```
POST /films/:film_id/reviews/
```

**Params**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|content  |string  |The new review  |
|rating   |integer |An integer out of 10 that represents a 5 star rating|

## Review

### Write a comment for a review

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
POST /users/new
```
**Params**

|Name        | Type  | Description           |
|------------|-------|-----------------------|
|first_name  |string |New user's first name  |
|last_name   |string |New user's last name   |
|email       |string |Account email          |
|password    |string |Account password       |
|image_url   |string |User's profile url     |
