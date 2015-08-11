module Api
  module V1
    class ProfilesController < ApplicationController

      def index
        @profiles = Profile.all
        render json: @profiles
      end

      def create
        profile = Profile.new(profile_params)
        if profile.save
          render json: { hello: 'goodbye' }.to_json
        end
      end
      
      private

      def profile_params
        params.permit(:email, :name)
      end
    end
  end
end
