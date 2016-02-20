module ExceptionNotifier
  class CampfireNotifier < BaseNotifier

    attr_accessor :subdomain
    attr_accessor :token
    attr_accessor :room

    def initialize(options)
      super
      begin
        subdomain = options.delete(:subdomain)
        room_name = options.delete(:room_name)
        @campfire = Tinder::Campfire.new subdomain, options
        @room     = @campfire.find_room_by_name room_name
      rescue
        @campfire = @room = nil
      end
    end

    def call(exception, options={})
      if active?
        message = "A new exception occurred: '#{exception.message}'"
        message += " on '#{exception.backtrace.first}'" if exception.backtrace
        send_notice(exception, options, message) do |msg, _|
          @room.paste msg
        end
      end
    end

    private

    def active?
      !@room.nil?
    end
  end
end
