.class Lcom/htc/camera/component/CameraMenuUI$21$2;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/CameraMenuUI$21;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI$21;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1070
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v1, v1, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$4702(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/lib1/cc/widget/HtcAlertDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 1076
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$2;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$4502(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1077
    return-void
.end method
