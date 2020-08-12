# Poetry and Emotion

### Instructions

Using a poetry API and a tone analysis API provided to you by your instructors, retrieve a sampling of poems for an author and display the relevant information below.

Build your work using TDD and commit your code at intervals no larger than 15 minutes.

```
As a user
When I visit "/"
And I fill in "Emily" in the textfield(Note: Use the existing search form)
And I click "Get Poems"
Then I should be on page "/search"
Then I should see a list of the first 10 poems.

For each poem I should see
- Title
- Author
- The poem(as a single string)

I should also see:
- The tone or tones for each poem
```

### Versions

Rails 5.2.4.3

Ruby 2.5.3

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`
