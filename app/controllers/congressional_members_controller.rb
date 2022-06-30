class CongressionalMembersController < ApplicationController

    def index
        congressional_members = CongressionalMember.all
        render json: congressional_members, status: 200
    end

    def show
        congressional_member = CongressionalMember.find(params[:id])
        if congressional_member
            render json: congressional_member, status: 200
        else
            render json: {error: "Congressional member not found"}, status: 404
        end
    end

end
