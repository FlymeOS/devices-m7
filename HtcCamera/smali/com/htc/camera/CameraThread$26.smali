.class Lcom/htc/camera/CameraThread$26;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CameraThread$ModeChangeHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$ModeChangeHandle;)V
    .locals 0

    .prologue
    .line 5118
    iput-object p1, p0, Lcom/htc/camera/CameraThread$26;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$26;->val$handle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5121
    iget-object v0, p0, Lcom/htc/camera/CameraThread$26;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$26;->val$handle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    # invokes: Lcom/htc/camera/CameraThread;->changeModeInternal(Lcom/htc/camera/CameraThread$ModeChangeHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$3300(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$ModeChangeHandle;)V

    .line 5122
    return-void
.end method
