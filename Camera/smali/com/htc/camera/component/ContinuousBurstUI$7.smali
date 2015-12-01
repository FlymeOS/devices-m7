.class Lcom/htc/camera/component/ContinuousBurstUI$7;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;

.field final synthetic val$captureHandle:Lcom/htc/camera/CaptureHandle;

.field final synthetic val$mediaInfo:Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iput-object p2, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$mediaInfo:Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;

    iput-object p3, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iput-object p4, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$mediaInfo:Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->startAlbum(Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$3000(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V

    .line 716
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 719
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$7;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 720
    return-void
.end method
