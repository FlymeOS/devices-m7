.class Lcom/htc/camera/component/SettingsDialog$8;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$300(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$400(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    sget-object v2, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$500(Lcom/htc/camera/component/SettingsDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showSettingsPanel() - onShow: "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsDialog;->access$300(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 232
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 233
    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$8;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/camera/component/SettingsDialog;->access$300(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 235
    :cond_0
    return-void
.end method
