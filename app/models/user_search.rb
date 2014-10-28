class UserSearch
  attr_accessor :attribute, :value

  def initialize(params)
    @attribute = params[:attribute]
    @value     = params[:value]
  end

  def result
    case @attribute
    when "id"
      User.find_by_id(@value.to_i)
    when "username"
      User.where(username: @value).first
    else
      nil
    end
  end
end