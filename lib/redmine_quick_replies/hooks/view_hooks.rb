module RedmineQuickReplies
  module Hooks
    class ViewHooks < Redmine::Hook::ViewListener

      def view_issues_bulk_edit_details_bottom(context={})
        view_issues_edit_notes_bottom(context)
      end

      def view_issues_edit_notes_bottom(context={})
        context[:controller].send(:render_to_string, {
          :partial => 'hooks/quick_replies_options',
          :locals => {context: context}
        })
      end

    end
  end
end
