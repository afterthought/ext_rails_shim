module ExtRailsShim
  module ControllerConvention

    extend ActiveSupport::Concern

    included do
      respond_to :json
      self.responder = ExtRailsShim::JsonResponder
    end

    module InstanceMethods
      def ext_order_from_params
        sort = params.has_key?(:sort) ? JSON.parse(params[:sort]) : []
        sort.map{|s|'%{property} %{direction}' % s.symbolize_keys}
      end
    end
  end
end
