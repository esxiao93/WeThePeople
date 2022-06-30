class UserKeyIssuesController < ApplicationController

    def index
        userKeyIssues = UserKeyIssue.all
        render json: userKeyIssues, status: 200
    end

end
