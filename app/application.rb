require 'time'

class Application
  def call(env)
    response = Rack::Response.new

    if Time.now > Time.parse('12:00')
      response.write "Good Afternoon!"
    else
      response.write "Good Morning!"
    end

    response.finish
  end
end
