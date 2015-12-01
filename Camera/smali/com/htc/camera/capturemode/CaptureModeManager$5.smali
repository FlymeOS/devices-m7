.class Lcom/htc/camera/capturemode/CaptureModeManager$5;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

.field final synthetic val$saveAsNewCameraRef:Lcom/htc/camera/Reference;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Reference;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iput-object p2, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->val$saveAsNewCameraRef:Lcom/htc/camera/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->val$saveAsNewCameraRef:Lcom/htc/camera/Reference;

    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$200(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$300(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$200(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 222
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$5;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$202(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 224
    :cond_0
    return-void
.end method
