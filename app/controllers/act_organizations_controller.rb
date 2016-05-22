class ActOrganizationsController < ApplicationController
  def update_organizations
    act_organization = ActOrganization.find(params[:id])
  end
end
