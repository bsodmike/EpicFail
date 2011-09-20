ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
  Rails.logger.debug "EXCEPTION: #{payload[:exception]}"
  if payload[:exception]
    name, message = *payload[:exception]
    EpicFail::Failure.create!(:message => message)
  end
end