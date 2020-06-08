class SignupController < ApplicationController
    def new
    @form=Signup.new(params)
    @form
    end
    def create
        @form=Signup.create(signup_params)
    end
    
    def destroy
    end
    def signup_params
        params.require(:signup).permit(:firstname, :email)
    end

end
