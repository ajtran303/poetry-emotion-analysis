# Poetry and Emotion

Search for poems by author and find out the emotional tone of a sampling of their poetry.

### Versions

Rails 5.2.4.3

Ruby 2.5.3

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`

### Usage

In your browser, navigate to `localhost:3000`
Search for poems by author name
Browse through the results!

### Screenshots


<img width="603" alt="Poetry and Emotion Homepage With Search Bar" src="https://user-images.githubusercontent.com/31839316/92953169-81acc080-f41e-11ea-8d0d-b8da49fe5eb4.png">

<img width="603" alt="Poetry and Emotion Search Results" src="https://user-images.githubusercontent.com/31839316/92953156-7c4f7600-f41e-11ea-9e95-4053f7c7b7fd.png">

### I built this in two hours with the following instructions

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
