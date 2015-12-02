.class Lcom/htc/camera/component/CameraMenuUI$21;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iput-object p2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1027
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-eq v0, v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-instance v1, Lcom/htc/camera/menu/SettingsMenu;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/menu/SettingsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4402(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/menu/SettingsMenu;

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$21$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$21$1;-><init>(Lcom/htc/camera/component/CameraMenuUI$21;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/SettingsMenu;->setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/camera/menu/SettingsMenu;->initializeMenuItems(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->updateItemContents()V

    .line 1055
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/SettingsMenu;->setSelection(I)V

    .line 1056
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->collapseAllItems()V

    .line 1059
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4700(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080203

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4702(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/lib1/cc/widget/HtcAlertDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 1067
    :cond_3
    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$21$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$21$2;-><init>(Lcom/htc/camera/component/CameraMenuUI$21;)V

    .line 1081
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1082
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v2, v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4602(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/IRotateDialogManager;)Lcom/htc/camera/IRotateDialogManager;

    .line 1083
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1085
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4500(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$4600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/htc/camera/component/CameraMenuUI;->access$4700(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v3

    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI$21;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a016a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v1, v7, v4}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4502(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1089
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4900(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
