class EntryPagesController < ApplicationController
  before_action :set_entry_page, only: [:show, :edit, :update, :destroy]

  # GET /entry_pages
  # GET /entry_pages.json
  def index
    @entry_pages = EntryPage.all
  end

  # GET /entry_pages/1
  # GET /entry_pages/1.json
  def show
  end

  # GET /entry_pages/new
  def new
    @entry_page = EntryPage.new
  end

  # GET /entry_pages/1/edit
  def edit
  end

  # POST /entry_pages
  # POST /entry_pages.json
  def create
    @entry_page = EntryPage.new(entry_page_params)

    respond_to do |format|
      if @entry_page.save
        format.html { redirect_to @entry_page, notice: 'Entry page was successfully created.' }
        format.json { render :show, status: :created, location: @entry_page }
      else
        format.html { render :new }
        format.json { render json: @entry_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_pages/1
  # PATCH/PUT /entry_pages/1.json
  def update
    respond_to do |format|
      if @entry_page.update(entry_page_params)
        format.html { redirect_to @entry_page, notice: 'Entry page was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_page }
      else
        format.html { render :edit }
        format.json { render json: @entry_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_pages/1
  # DELETE /entry_pages/1.json
  def destroy
    @entry_page.destroy
    respond_to do |format|
      format.html { redirect_to entry_pages_url, notice: 'Entry page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_page
      @entry_page = EntryPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_page_params
      params.require(:entry_page).permit(:title, :body, :published, :section_id)
    end
end
