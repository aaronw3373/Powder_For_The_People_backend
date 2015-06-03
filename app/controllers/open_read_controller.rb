class OpenReadController < ApiController
  skip_before_action :authenticate, if: :read_action?

  def read_action?
    action = action_name.to_sym
    puts action
    action == :show_email || action == :show_id || action == :index || action == :find_by_name
  end

end
