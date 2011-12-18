# -*- coding: utf-8 -*-
class InquiryNotifier < ActionMailer::Base
  default :from => ENV['CB_MAIL_FR']

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_notifier.create.subject
  #
  def create(inquiry)
    @inquiry = inquiry

    mail :to => ENV['CB_MAIL_TO'], :subject => "Webサイトからの問い合わせ [" + inquiry.name + "]"
  end
end
