class DestinationsController < InheritedResources::Base

  private

    def destination_params
      params.require(:destination).permit(:name, :latitude, :longitude, :logo, :cover, :description, :email, :url, :user_id, :category_id, :price, :discount)
    end
end

