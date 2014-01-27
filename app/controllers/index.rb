get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  if @grandma == @grandma.upcase
    @grandma = @grandma + " yourself! I will beat you with a shoe!"
    redirect "/?grandma=#{@grandma}"
  else
    @grandma = "Speak up kiddo!"
    redirect "/?grandma=#{@grandma}"
  end
end
