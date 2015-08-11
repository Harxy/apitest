module Api
  module V1
    class ProfilesController < ApplicationController
      def index
        @profiles = Profile.all
        render json: @profiles
      end
    end
  end
end
