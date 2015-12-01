.class Lcom/htc/camera/CameraThread$11;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$cameraType:Lcom/htc/camera/CameraType;

.field final synthetic val$handle:Lcom/htc/camera/SessionHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/SessionHandle;Lcom/htc/camera/CameraType;)V
    .locals 0

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/htc/camera/CameraThread$11;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$11;->val$handle:Lcom/htc/camera/SessionHandle;

    iput-object p3, p0, Lcom/htc/camera/CameraThread$11;->val$cameraType:Lcom/htc/camera/CameraType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/camera/CameraThread$11;->this$0:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->stopPreview()V

    .line 1588
    iget-object v0, p0, Lcom/htc/camera/CameraThread$11;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$11;->val$handle:Lcom/htc/camera/SessionHandle;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$11;->val$cameraType:Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;
    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraThread;->access$700(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    .line 1589
    return-void
.end method
