class ApplicationController < ActionController::Base

  $user_type = 3
  $current_user = User.find(1)

  def update_type_admin
    $user_type = 1
    $current_user = User.find(2)
    redirect_to 'http://localhost:3000?user_id=2'
  end

  def update_type_regular_user
    $user_type = 2
    $current_user = User.find(1)
    redirect_to 'http://localhost:3000/?user_id=1'
  end

  def update_type_guest_user
    $user_type = 3
    $current_user = nil
    redirect_to 'http://localhost:3000'
  end

end
