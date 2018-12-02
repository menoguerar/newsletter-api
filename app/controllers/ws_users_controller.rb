class WsUsersController < ApplicationController
    soap_service namespace: 'urn:WashOutUser', camelize_wsdl: :lower

    # get topics case
    soap_action "userInfo",
                :args => { :userId => :integer, :infoRequired => :string},
                :return => { :info => [:string]}
    def userInfo
        if (User.exists?(id: params[:userId]))
            @user = User.find(params[:userId])
            infoRequired = params[:infoRequired]
            if infoRequired.casecmp("name") == 0
                render :soap => { :info => [@user.name]}
            else
                if infoRequired.casecmp("email") == 0
                    render :soap => { :info => [@user.email]}
                else
                    if infoRequired.casecmp("usertopics") == 0
                        t_topics = @user.topics.map(&:name)
                        render :soap => { :info => t_topics}
                    end
                end
            
            end
            
        else
            render :soap => { :info => Null }
        end
    end
end
