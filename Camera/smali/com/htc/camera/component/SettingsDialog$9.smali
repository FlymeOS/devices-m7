.class Lcom/htc/camera/component/SettingsDialog$9;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$300(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$600(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v1}, Lcom/htc/camera/component/SettingsDialog;->access$600(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # setter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SettingsDialog;->access$302(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/lib1/cc/widget/HtcAlertDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # setter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SettingsDialog;->access$002(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$400(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$700(Lcom/htc/camera/component/SettingsDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showSettingsPanel() - onDismiss: "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_NeedToShowGlobalDialog:Z
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$800(Lcom/htc/camera/component/SettingsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SettingsDialog;->m_NeedToShowGlobalDialog:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SettingsDialog;->access$802(Lcom/htc/camera/component/SettingsDialog;Z)Z

    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$9;->this$0:Lcom/htc/camera/component/SettingsDialog;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/SettingsDialog;->showSettingsPanel(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SettingsDialog;->access$900(Lcom/htc/camera/component/SettingsDialog;Z)V

    .line 259
    :cond_1
    return-void
.end method
