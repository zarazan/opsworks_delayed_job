cron "product_report" do
  path "/usr/local/bin:$PATH"
  hour "1"
  command "cd /srv/www/dailydeeds/current && rake RAILS_ENV=production automated:send_payment_report"
end
