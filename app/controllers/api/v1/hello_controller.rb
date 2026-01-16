module Api
  module V1
    class HelloController < ApplicationController
      def hello
        render json: { message: "Hello World from Shopify Integration API!" }
      end
    end
  end
end

