class TestController < ApplicationController
  before_action :set_test, only: :show

  # GET /test/
  def show
    render json: @test
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      raise StandardError.throw
    end
end
