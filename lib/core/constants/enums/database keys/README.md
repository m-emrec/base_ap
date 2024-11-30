# Database Keys

This folder contains the database keys as enum.

### Content

##### `collection_keys.dart``

- Store all collection names in this enum.
*example:*
````
CollectionKeys{
    Users,
    Items,
    Posts .....
}
````
##### `x_doc_keys.dart``

- For every document in database create a separate doc_keys file.
*For Example:*
```
ItemDocKeys,
UserDocKeys 
```