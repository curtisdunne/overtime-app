class AuditLogsController < ApplicationController
  def index
    # @posts = Post.posts_by(current_user).page(params[:page]).per(20)

    @audit_logs = AuditLog.all.page(params[:page]).per(20)
    authorize @audit_logs
  end

  def confirm
    audit_log = AuditLog.find(params[:id])
    authorize audit_log
    audit_log.confirmed!

    redirect_to root_path, notice: "Thank you, your confirmation has been successfully made."
  end
end
