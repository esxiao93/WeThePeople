class UserPostedIssuesController < ApplicationController

    def index
        userPostedIssues = UserPostedIssue.all
        render json: userPostedIssues, status: 200
    end

end
