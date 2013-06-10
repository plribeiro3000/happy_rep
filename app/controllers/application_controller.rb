class ApplicationController < Zertico::Controller
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
end