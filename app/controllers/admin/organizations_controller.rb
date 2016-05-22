class Admin::OrganizationsController < Admin::BaseController
  def index
    @organizations = Organization.all.includes(:organization_groups, organization_groups: :organization_subgroups)
  end
end