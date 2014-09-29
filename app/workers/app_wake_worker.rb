class AppWakeWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely }

  def perform
    ENV['HEROKU_URLS'].split(',').each do |url|
      connection(url).get
    end
  end

  def connection(url)
    Faraday.new('http://wiyomi.com') do |c|
      c.use FaradayMiddleware::FollowRedirects
      c.use Faraday::Adapter::NetHttp
    end
  end
end