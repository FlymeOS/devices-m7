.class Lcom/htc/camera/CameraThread$27;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 5257
    iput-object p1, p0, Lcom/htc/camera/CameraThread$27;->this$0:Lcom/htc/camera/CameraThread;

    iput-boolean p2, p0, Lcom/htc/camera/CameraThread$27;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5261
    iget-object v0, p0, Lcom/htc/camera/CameraThread$27;->this$0:Lcom/htc/camera/CameraThread;

    iget-boolean v1, p0, Lcom/htc/camera/CameraThread$27;->val$isEnabled:Z

    # invokes: Lcom/htc/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$3400(Lcom/htc/camera/CameraThread;Z)V

    .line 5262
    return-void
.end method
