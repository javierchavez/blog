# Blog

This is a blog example. User authentication with devise. Anon comments
on posts. Comment and post management.

Install the gems

```
    bundle install
```

Init the DB
```
    rake db:migrate
```

Start server
```
    rails s
```

#Models
*  Post - has a title, body
*  Comment -  has a post id, body

#Views
*  ```/posts``` list of all posts
*  ```/posts/id``` show a specific post with id
*  ```/posts/id/comments``` list of comments for a post
 
There is a constraint in place to prevent comments being made without
a post. Simple non-intrusive JS is in place to append a comment to a
post to prevent page reloading.

---
##Author
Javier C. javierc@cs.unm.edu
