.class Lcom/htc/camera/component/CameraMenuUI$8;
.super Lcom/htc/camera/trigger/Trigger;
.source "CameraMenuUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$8;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$8;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$8;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-eq v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$8;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$8;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsRelayoutNeeded:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3302(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 765
    return-void
.end method
