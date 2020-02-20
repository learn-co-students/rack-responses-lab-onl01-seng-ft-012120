class Application

  def call(env)
    resp = Rack::Response.new
    
    hour = Time.new.strftime("%k:%M")
    resp.write "<h1>#{hour}</h1>"
    if Time.now.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

  def greetings
 

  end
end