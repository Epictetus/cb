class InquiriesController < ApplicationController
  layout "inquiries"
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.valid?
        InquiryNotifier.create(@inquiry).deliver
    else
        respond_to do |f|
            f.html { render action: "new" }
        end
    end
  end
end
