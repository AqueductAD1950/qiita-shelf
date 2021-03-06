require "rubygems"
require "bundler/setup"
require "qiita"
require "json"

ITEM_DIR_PATH = "items/#{ARGV[0]}"
PARAMS_FILE_PATH = File.join(ITEM_DIR_PATH, "params.json")
ITEM_ID_FILE_PATH = File.join(ITEM_DIR_PATH, "ITEM_ID")
BODY_FILE_PATH = File.join(ITEM_DIR_PATH, "README.md")

client = Qiita::Client.new(access_token: ENV['QIITA_TOKEN'])
headers = {'Content-Type' => 'application/json'}

params = File.open(PARAMS_FILE_PATH) do |file|
  JSON.load(file)
end
params['body'] = File.open(BODY_FILE_PATH) do |file|
  file.read
end

if File.exist?(ITEM_ID_FILE_PATH)
  item_id = File.open(ITEM_ID_FILE_PATH) do |file|
    file.read
  end
  p 'Update Article!'
  p client.update_item(item_id, params, headers)
else
  p 'Create Article!'
  p res = client.create_item(params, headers)
  if res.status == 201
    File.open(ITEM_ID_FILE_PATH, 'w') do |f|
      f.write(res.body['id'])
    end
  end
end
