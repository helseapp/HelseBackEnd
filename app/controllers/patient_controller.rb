class PatientController < ApplicationController
  def list
    @patients = Patient.all
  end
end
