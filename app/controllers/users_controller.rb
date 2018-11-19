class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def signin
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          render json: user
        else
          render json: { error: 'Invalid username and password combination.' }, status: 400
        end
      end

    def signup
        # results = Geocoder.search(params[:userInfo][:location])

        @user = User.create(email: params[:userInfo][:email], 
        password: params[:userInfo][:password], 
        first_name: params[:userInfo][:firstName], 
        last_name: params[:userInfo][:lastName],
        job_title: params[:userInfo][:jobTitle],
        personal_msg: params[:userInfo][:personalMessage],
        mentor: params[:userInfo][:mentor] ? true : false,
        mentee: !params[:userInfo][:mentor] ? true : false,
        location: params[:userInfo][:location],
        avatar_link: params[:userInfo][:avatarLink])

        if @user.valid?
          render json: @user, status: :created
        else
          render json: { error: 'Email already exists.' }, status: :not_acceptable
        end
    end


    def validate
        user = currrent_user
        if user
        render json: {email: user.email, id: user.id, token: token}
        else
        render json: {error: 'Validation failed.'}, status: 400
        end
    end

    def create_connection
        @user = User.find(params[:userId])
        @connection = Connection.create(user_id: params[:userId], mentor: @user.mentor, mentee: @user.mentee, accepted: false, requested_user_id: params[:requestedUserId], expectations_message: params[:expMessage], request_message: params[:reqMessage])
        render json: @user
    end

end
