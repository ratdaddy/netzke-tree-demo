## README

This Netzke demo job demonstrates the model structure we are trying to display
as a tree. There are three objects, two of which would be considered at the
"root" level. This mimics our production program where it would be difficult
to generate an additional AR object representing the root. We essentially have
an array of trees.

There are three Truffula objects:

- Once-ler: a parent with one child
- Brown Bar-ba-loot: the child of Once-ler
- Swomee Swans: a parent with no children.

The current example will display Once-ler as a tree because the `.root` method
on `Truffula` only returns a single object:

```
def self.root
  where(parent_id: nil).first
end
```

The goal is to remove the `.first` call and have all the parent objects appear
in the ExtJS tree display.

To run this example, after the usual `bundle install` use this to set up the
database and seed it with the example objects:

```
$ rake db:create db:migrate db:seed
```

The results can be seen at the `netzke-testing` endpoint:
`http://localhost:3000/netzke/components/Truffulas`
