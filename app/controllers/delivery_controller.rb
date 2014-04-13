class DeliveryController < ApplicationController
  def index
    @delivery = Recipient.select("*").joins(:recipient_menus)
    respond_to do |format|
      format.html # index.html.erb
      format.pdf { send_pdf(@delivery) }
    end 
  end
  
  def show
    @delivery = Recipient.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.pdf { send_pdf(@delivery) }
    end 
  end
  
  private
  
  def send_pdf(deliveries)
    deliveries = Array(deliveries)
    labels = Prawn::Labels.render(deliveries, :type => "Avery5160") do |pdf, delivery|
      pdf.font_size 6
      pdf.text "#{delivery.first_name} #{delivery.last_name}"
      pdf.move_down 4
      pdf.text "bottom"
    end
    send_data labels, :filename => "delivery.pdf", :type => "application/pdf", :disposition => :inline
  end

end 