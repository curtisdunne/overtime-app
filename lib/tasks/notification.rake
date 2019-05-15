namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. schedule to run every Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip Admin type include_chain_clauses_in_custom_matcher_descriptions
    # 4. Send a message that has instructions and a link to log time

    # if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the Hours Management Dashboard to enter daily hours worked: https://neutrino-overtime.herokuapp.com"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    # end
  end

# NOTE: Mailer not setup due to no free account being available
  # desc "Sends mail notification to managers each day to inform of pending overtime requests"
  # task manager_email: :environment do
  #   # 1. iterate over list of pending overtime requests
  #   # 2. check to see if there are any requests
  #   # 3. iterate over list of admin users
  #   # 4. send email to each admin
  #   submitted_posts = Post.submitted
  #   admin_users = AdminUser.all
  #
  #   if submitted_posts.count > 0
  #     admin_users.each do |admin|
  #       ManagerMailer.email(admin).deliver_now
  #     end
  #   end
  # end


end
