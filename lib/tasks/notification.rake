namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. schedule to run every Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip Admin type include_chain_clauses_in_custom_matcher_descriptions
    # 4. Send a message that has instructions and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  end

end
