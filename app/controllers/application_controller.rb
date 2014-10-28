class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def success(obj, code=201)
    render :json => obj, :status => code
  end

  def successful_array(obj, root=true, code=201, scope=nil)
    render :json => obj, :root => root, :status => code
  end

  def array_with_serializer(obj, serializer, root=false, code=201, scope=nil)
    render :json => obj, :each_serializer => serializer, :root => root, :status => code, :scope => scope
  end

  def error(errors, code=400)
    render :json => { errors: errors }, :root => false, :status => code
  end

  # def current_user
  #   @current_user ||= lookup_user
  # end
  # helper_method :current_user

  # def lookup_user
  #   if params[:id]
  #     User.find(params[:id])
  #   end
  # end

end
