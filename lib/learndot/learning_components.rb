class Learndot::LearningComponents
  def initialize(api)
    @api = api
  end

  def retrieve_component(conditions, options = {orderBy: 'Name', asc: true})
    learning_component = @api.search(:content_component, conditions, options)
  end

  def create_component(conditions)
    @api.create(:content_component, conditions)
  end

  def update_component(component_id, conditions={})
    @api.update(:content_component, conditions, component_id)
  end
end

class Learndot
  def learning_component
    Learndot::LearningComponents.new(self.api)
  end
end
