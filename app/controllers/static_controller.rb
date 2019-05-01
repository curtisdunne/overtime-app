class StaticController < ApplicationController
  def home
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(12)
    else
      # TODO: fix scope
      @pending_audit_confirmations = current_user.audit_logs.pending.order('start_date asc')
    end
  end
end
