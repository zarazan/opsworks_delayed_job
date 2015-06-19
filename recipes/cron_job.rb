cron "product_report" do
  path '/usr/local/bin:$PATH'
  minute '0'
  hour '1'
  user 'deploy'
  command "cd /srv/www/dailydeeds/current && bundle exec rake RAILS_ENV=production automated:send_payment_report"
end
