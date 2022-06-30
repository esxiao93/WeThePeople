class PostedIssuesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :posted_issue_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    def index 
        postedIssues = PostedIssue.all
        render json: postedIssues, status: 200 
    end

    
    def show 
        postedIssue = PostedIssue.find(params[:id])
        if postedIssue
            render json: postedIssue, status: 200
        else 
            render json: {error: "Posted issue not found"}, status: 404
        end
    end


    def update
        postedIssue = PostedIssue.find(params[:id])
        postedIssue.update!(posted_issue_params)
        render json: keyIssue
    end

    def create
        postedIssue = PostedIssue.create!(posted_issue_params)
        render json: postedIssue, status: :created
    end

    def destroy
        postedIssue = PostedIssue.find(params[:id])
        postedIssue.destroy
        head :no_content
    end

    private

    def posted_issue_params
        params.permit(:title, :description, :upvote, :downvote)
    end
    
    def posted_issue_not_found
        render json: {error: "Posted issue not found"}, status: :not_found
    end
    
    def invalid_record(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
