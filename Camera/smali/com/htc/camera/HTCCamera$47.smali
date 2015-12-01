.class Lcom/htc/camera/HTCCamera$47;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;

.field final synthetic val$blockReason:Lcom/htc/camera/CameraThreadBlockReason;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThreadBlockReason;)V
    .locals 0

    .prologue
    .line 9043
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$47;->this$0:Lcom/htc/camera/HTCCamera;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$47;->val$blockReason:Lcom/htc/camera/CameraThreadBlockReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9047
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$47;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$47;->val$blockReason:Lcom/htc/camera/CameraThreadBlockReason;

    # invokes: Lcom/htc/camera/HTCCamera;->onCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$6300(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThreadBlockReason;)V

    .line 9048
    return-void
.end method
