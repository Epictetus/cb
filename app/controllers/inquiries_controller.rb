class InquiriesController < ApplicationController
  layout "inquiries"
  def new
    @inquiry = Inquiry.new
    @inquiry.name = "hoge"
  end

  def create
  end

end
