.class Lcom/htc/camera/CameraThread$19;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$checkSize:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 3808
    iput-object p1, p0, Lcom/htc/camera/CameraThread$19;->this$0:Lcom/htc/camera/CameraThread;

    iput-boolean p2, p0, Lcom/htc/camera/CameraThread$19;->val$checkSize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/htc/camera/CameraThread$19;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/camera/CameraThread$19;->val$checkSize:Z

    iget-object v3, p0, Lcom/htc/camera/CameraThread$19;->this$0:Lcom/htc/camera/CameraThread;

    invoke-virtual {v3}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v3

    # invokes: Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/CameraThread;->access$2800(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageState;ZJ)V

    .line 3812
    return-void
.end method
