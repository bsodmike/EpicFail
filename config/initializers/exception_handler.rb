# ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
#   Rails.logger.debug "EXCEPTION: #{payload[:exception]}" if Rails.env.development? && !payload[:exception].blank?
#   if payload[:exception]
#     name, message = *payload[:exception]
#     EpicFail::Failure.create!(:message => message)
#   end
# end