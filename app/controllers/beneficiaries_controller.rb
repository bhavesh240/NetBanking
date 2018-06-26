class BeneficiariesController < ApplicationController
  
  
  def index
    @user = current_user
    @beneficiaries = Beneficiary.all
  end

  def create

    account_number = params[:beneficiary].values[1]
    account = Account.find_by_account_number(account_number)

    if account
      if account.user.verify
        Beneficiary.create(beneficiary_params)
        current_user.beneficiaries << Beneficiary.last
        UserMailer.beneficiary_added(current_user).deliver
        redirect_to  beneficiaries_path
      end
    else
      redirect_to  new_beneficiary_path
    end
  end

  def new
    @beneficiary = Beneficiary.new
  end

end

def beneficiary_params
    params.require(:beneficiary).permit(:name,:account_number)
end

