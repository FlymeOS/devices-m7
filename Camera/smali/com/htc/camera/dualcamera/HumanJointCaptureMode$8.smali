.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$600(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - settings menu button clicked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/b;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/b;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/b;->showSettingsDialog(I)Lcom/htc/camera/CloseableHandle;

    .line 311
    :cond_0
    return-void
.end method
