class SingleController < PublicController


  def index
  end

  def send_email

    @mail_contact = MailContact.new(mail_contact_params)

    respond_to do |format|
      if @mail_contact.save
        format.html { redirect_to root_path, notice: 'Tu mensaje fue enviado con éxito' }
        format.json { render :show, status: :created, location: @mail_contact }
      else
        format.html { render :new }
        format.json { render json: @mail_contact.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def mail_contact_params
      params.require(:mail_contact).permit(:name, :email, :question, :already_read, :already_answered)
  end
end
