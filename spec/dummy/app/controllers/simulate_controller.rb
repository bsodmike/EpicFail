class SimulateController < ApplicationController
  def failure
    redirect_to epic_fail_engine.root_path
    raise "Simulated exception...yeah!"
  end

end
