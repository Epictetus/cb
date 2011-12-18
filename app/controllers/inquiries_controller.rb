class InquiriesController < ApplicationController
  layout "inquiries"
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    InquiryNotifier.create(@inquiry).deliver
  end

end
