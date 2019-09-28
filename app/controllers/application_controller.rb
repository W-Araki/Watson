class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
# 　↑モジュール設定
end
