class Application

  def call(env)
    resp = Rack::Response.new
    
    a = Time.now
    resp.write "#{a.strftime("%k:%M")}"
    
    if a.strftime("%p") == "AM"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
end