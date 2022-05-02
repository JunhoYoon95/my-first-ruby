class CalculatorController < ApplicationController
    def add
        @message = '안녕 난 준호야'
    end
    def result
        @result = params[:first].to_i + params[:second].to_i
    end
end
