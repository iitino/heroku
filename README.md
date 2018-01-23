# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

// micropostからuserを呼び出す方法
$ rails console
>> first_user = User.first
=> #<User id: 1, name: "Michael Hartl", email: "michael@example.org",
created_at: "2016-05-15 02:01:31", updated_at: "2016-05-15 02:01:31">
>> first_user.microposts
=> [#<Micropost id: 1, content: "First micropost!", user_id: 1, 
created_at: "2011-11-03 02:37:37", updated_at: "2011-11-03 02:37:37">,
"2016-05-15 02:37:37", updated_at: "2016-05-15 02:37:37">,
#<Micropost id: 2, content: "Second micropost", user_id: 1,
created_at: "2016-05-15 02:38:54", updated_at: "2016-05-15 02:38:54">]
>> micropost = first_user.microposts.first
=> #<Micropost id: 1, content: "First micropost!", user_id: 1, created_at:
"2016-05-15 02:37:37", updated_at: "2016-05-15 02:37:37">
>> micropost.user
=> #<User id: 1, name: "Michael Hartl", email: "michael@example.org",
created_at: "2016-05-15 02:01:31", updated_at: "2016-05-15 02:01:31">
>> exit