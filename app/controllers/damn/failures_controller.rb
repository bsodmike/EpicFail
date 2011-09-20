module Damn
  class FailuresController < ApplicationController
    def index
      @failures = Failure.all
    end
  
  end
end
