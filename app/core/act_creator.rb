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
    save_localization
    if @act.save
      @act
    else
      false
    end
  end

  private

  def save_authorship
    act_organization = subgroup || group || organization 
    @act.act_organizations.new(organizable: act_organization) if act_organization
  end

  def save_typology
    @act.update(@typology)
  end

  def save_localization
    @act.place = Place.new(@localization)
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
