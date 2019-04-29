class AuditLogsController < ApplicationController
  def index
    # @posts = Post.posts_by(current_user).page(params[:page]).per(20)

    @audit_logs = AuditLog.all.page(params[:page]).per(20)
    authorize @audit_logs
  end

end
