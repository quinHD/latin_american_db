class ActCreator
  def initialize(params)
    @identification = params[:identification]
    @authorship = params[:authorship]
    @typology = params[:typology]
    @localization = params[:localization]
    @act = Act.none
  end

  def save
    @act = Act.new(@identification)
    save_typology
    save_authorship
    @act.save
  end

  private

  def save_authorship
    act_organization = subgroup || group || organization 
    binding.pry
    @act.act_organizations.new(organizable: act_organization)
  end

  def save_typology
    @act.update(@typology)
  end

  def localization_persister
  end

  def organization
    organization = Organization.find_or_create_by(name: @authorship[:organization])
    organization.id? ? organization : nil
  end

  def group
    organization = OrganizationGroup.find_or_create_by(name: @authorship[:group])
    organization.id? ? organization : nil
  end

  def subgroup
    organization = OrganizationSubgroup.find_or_create_by(name: @authorship[:subgroup])
    organization.id? ? organization : nil
  end

end
