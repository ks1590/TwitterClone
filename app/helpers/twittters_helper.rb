module TwitttersHelper
    def choose_create_or_edit
        if action_name == 'new' || action_name == 'create'
            confirm_twittters_path
        elsif action_name == 'edit'
            twittter_path
        end
    end
end
