class DestinationImagesController < InheritedResources::Base

  private

    def destination_image_params
      params.require(:destination_image).permit(:destination_id, :destination_image)
    end
end

