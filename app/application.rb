# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". 
# Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

class Application

    def call(env)
        resp = Rack::Response.new
    #   binding.pry
        current_time = Time.now 

        # if current_time > 12
        #     resp.write "Good Morning!"
        # else
        #     resp.write "Good Afternoon!"
        # end

        current_time.hour > 12 ? resp.write("Good Afternoon!") : resp.write("Good Morning!")

        resp.finish
    end
end