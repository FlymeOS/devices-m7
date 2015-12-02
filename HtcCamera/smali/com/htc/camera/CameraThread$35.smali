.class Lcom/htc/camera/CameraThread$35;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$checkStorage:Z

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Z)V
    .locals 0

    .prologue
    .line 5623
    iput-object p1, p0, Lcom/htc/camera/CameraThread$35;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$35;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-boolean p3, p0, Lcom/htc/camera/CameraThread$35;->val$checkStorage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5627
    iget-object v0, p0, Lcom/htc/camera/CameraThread$35;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$35;->val$handle:Lcom/htc/camera/CaptureHandle;

    iget-boolean v2, p0, Lcom/htc/camera/CameraThread$35;->val$checkStorage:Z

    const/4 v3, 0x0

    # invokes: Lcom/htc/camera/CameraThread;->takePictureInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/CameraThread;->access$4200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 5628
    return-void
.end method
