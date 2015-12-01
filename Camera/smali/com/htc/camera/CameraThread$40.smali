.class Lcom/htc/camera/CameraThread$40;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$supported:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 6241
    iput-object p1, p0, Lcom/htc/camera/CameraThread$40;->this$0:Lcom/htc/camera/CameraThread;

    iput-boolean p2, p0, Lcom/htc/camera/CameraThread$40;->val$supported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6245
    iget-object v0, p0, Lcom/htc/camera/CameraThread$40;->this$0:Lcom/htc/camera/CameraThread;

    iget-boolean v1, p0, Lcom/htc/camera/CameraThread$40;->val$supported:Z

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setIsVideoPauseSupported(Z)V

    .line 6246
    return-void
.end method
