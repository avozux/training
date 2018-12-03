class AcpController < ApplicationController
	layout 'acp'
	before_action :authenticate_admin!
end