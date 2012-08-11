# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    #movie[:title] = ['Aladdin', 'The Terminator', 'When Harry Met Sally', 'The Help', 'Chocolat', 'Amelie', '2001: A Space Odyssey', 'The Incredibles', 'Raiders of the Lost Ark', 'Chicken Run ']
    #movie[:rating] = ['G', 'R', 'R', 'PG-13', 'PG-13', 'R', 'G', 'PG', 'PG', 'G']
    #movie[:release_date] = ['25-Nov-1992', '26-Oct-1984', '21-Jul-1989', '10-Aug-2011', '5-Jan-2001', '25-Apr-2001', '6-Apr-1968', '5-Nov-2004', '12-Jun-1981', '21-Jun-2000']
    movie.create({:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992'});
    movie.create({:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984'});
    movie.create({:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'});
    movie.create({:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'});
    movie.create({:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'});
    movie.create({:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'});
    movie.create({:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968'});
    movie.create({:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004'});
    movie.create({:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'});
    movie.create({:title => 'Chicken Run ', :rating => 'G', :release_date => '21-Jun-2000'});
	# each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
	Given %Q{I am on the Create New Movie page}
	When  %Q{I fill in "Title" with "#{movie[:title]}"}
	And   %Q{I select "#{movie[:rating]}" from "Rating"}
	And   %Q{I select "#{movie[:release_date]}" from "Released On"}
	And   %Q{I press "Save Changes"}
  end
  assert false, "Unimplmemented"
end

#Given /the following movies exist/ do |movies_table|
#  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
#  end
#  flunk "Unimplemented"
#end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.content  is the entire content of the page as a string.
  flunk "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
end
