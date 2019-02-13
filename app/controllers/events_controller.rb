class EventsController < ApplicationController
	def index
	end

	def new
		@event = Event.new
	end

	def show
		@event = Event.find(params[:id])
	end
end
