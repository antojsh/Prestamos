class OverdraftsController < ApplicationController
  before_action :set_overdrafts
  before_action :set_overdraft, only: [:show, :edit, :update, :destroy]

  # GET employees/1/overdrafts
  def index
    @overdrafts = @employee.overdrafts
  end

  # GET employees/1/overdrafts/1
  def show
  end

  # GET employees/1/overdrafts/new
  def new
    @overdraft = @employee.overdrafts.build
  end

  # GET employees/1/overdrafts/1/edit
  def edit
  end

  # POST employees/1/overdrafts
  def create
    @overdraft = @employee.overdrafts.build(overdraft_params)

    if @overdraft.save
      redirect_to([@overdraft.employee, @overdraft], notice: 'Overdraft was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT employees/1/overdrafts/1
  def update
    if @overdraft.update_attributes(overdraft_params)
      redirect_to([@overdraft.employee, @overdraft], notice: 'Overdraft was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE employees/1/overdrafts/1
  def destroy
    @overdraft.destroy

    redirect_to employee_overdrafts_url(@employee)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overdrafts
      @employee = Employee.find(params[:employee_id])
    end

    def set_overdraft
      @overdraft = @employee.overdrafts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def overdraft_params
      params.require(:overdraft).permit(:client_id, :employee_id, :valor, :plazo, :tipo_plazo)
    end
end
