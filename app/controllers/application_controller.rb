class ApplicationController < ActionController::API
    include ActionController::Cookies

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { message: "Testing refresh session works", count: session[:count] }
    end
end
