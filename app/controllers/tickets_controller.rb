class TicketsController < InheritedResources::Base

  private

    def ticket_params
      params.require(:ticket).permit(:user_id, :destination_id, :price, :quantity, :ticket_date)
    end
end

