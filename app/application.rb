class Application 
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        (t.hour > 12) ? (resp.write "Good Afternoon!") : (resp.write "Good Morning!")
        resp.finish
    end

end

