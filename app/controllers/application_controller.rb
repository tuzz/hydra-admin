class ApplicationController
  def self.get(params, context = nil)
    new(params, context).get
  end

  attr_accessor :params, :context

  def initialize(params, context)
    self.params = params
    self.context = context
  end

  def json(hash)
    context.content_type("application/json")
    hash.to_json
  end
end
