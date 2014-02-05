get '/create_post' do
  erb :create_post
end

post '/create_post' do
  post = Post.create(title: params[:title],
              content: params[:content],
              url: params[:url],
              user_id: session[:id])
  redirect '/'
end

get '/view_posts_by_user/:username' do # Pass username
  @user_id = User.find_by(username: params[:username]).id
  erb :view_posts_by_user
end

post '/post_upvote' do
  upvote = UpvotePost.create(user_id: session[:id])
  upvote.post_id = params['post_id']
  upvote.vote = params['vote']
  upvote.save
  @votes = 10
  erb :index
end
