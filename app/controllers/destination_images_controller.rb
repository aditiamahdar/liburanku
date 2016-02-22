class DestinationImagesController < InheritedResources::Base

  def create
    @image = DestinationImage.new(destination_image_params)
    if @image.save
      render json: @image
    else
      render json: @image.errors
    end
  end

  private

    def destination_image_params
      params.require(:destination_image).permit(:destination_id, :destination_image)
    end
end

