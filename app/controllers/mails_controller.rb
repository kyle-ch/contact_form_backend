class MailsController < ApplicationController
  before_action :set_contact_mail, only: [:show, :update, :destroy]

  # GET /mails
  def index
    @mails = ContactMail.all

    render json: @mails
  end

  # GET /mails/1
  def show
    render json: @mail
  end

  # POST /mails
  def create
    puts params
    @mail = ContactMail.new(mail_params)
    if @mail.key == ENV["API_KEY"]
      ContactMailer.with(mail: @mail).new_email.deliver_now
      render json: @mail, status: :created
    else
      render json: @mail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mails/1
  def update
    if @mail.update(mail_params)
      render json: @mail
    else
      render json: @mail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mails/1
  def destroy
    @mail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail
      @mail = ContactMail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mail_params
      params.require(:mail).permit(:body, :email, :time, :name, :source, :key)
    end
end
