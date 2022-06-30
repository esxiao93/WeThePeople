class KeyIssuesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :key_issue_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    def index 
        keyIssues = KeyIssue.all
        render json: keyIssues, status: 200 
    end

    
    def show 
        keyIssue = KeyIssue.find(params[:id])
        if keyIssue 
            render json: keyIssue, status: 200
        else 
            render json: {error: "Key issue not found"}, status: 404
        end
    end


    def update
        keyIssue = KeyIssue.find(params[:id])
        keyIssue.update!(key_issue_params)
        render json: keyIssue
    end

    def create
        keyIssue = KeyIssue.create!(key_issue_params)
        render json: keyIssue, status: :created
    end

    def destroy
        keyIssue = KeyIssue.find(params[:id])
        keyIssue.destroy
        head :no_content
    end

    private

    def key_issue_params
        params.permit(:title, :description, :upvote, :downvote)
    end
    
    def key_issue_not_found
        render json: {error: "Key issue not found"}, status: :not_found
    end
    
    def invalid_record(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

end
