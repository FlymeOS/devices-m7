.class Lcom/htc/camera/component/CameraMenuUI$21$1;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Lcom/htc/camera/menu/e;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/CameraMenuUI$21;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI$21;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$21$1;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 2

    .prologue
    .line 1039
    instance-of v0, p2, Lcom/htc/camera/menu/CheckBoxMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/htc/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$1;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4500(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$1;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$21$1;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v1, v1, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4500(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 1044
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$21$1;->this$1:Lcom/htc/camera/component/CameraMenuUI$21;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$21;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$4502(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1048
    :cond_0
    return-void
.end method
