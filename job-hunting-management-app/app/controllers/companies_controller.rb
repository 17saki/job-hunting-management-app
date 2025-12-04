class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_path, notice: "保存しました"
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :interest, :choice, :situation, :schedule, :date_c, :starttime_c, :end_time_c, :detail, :memo_c)
  end

  def debug_origin
    Rails.logger.info ">>> Origin: #{request.headers['Origin']}"
    Rails.logger.info ">>> base_url: #{request.base_url}"
    Rails.logger.info ">>> host_with_port: #{request.host_with_port}"
    Rails.logger.info ">>> protocol: #{request.protocol}"
  end

end
