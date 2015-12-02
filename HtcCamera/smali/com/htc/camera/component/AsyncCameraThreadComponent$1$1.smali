.class Lcom/htc/camera/component/AsyncCameraThreadComponent$1$1;
.super Ljava/lang/Object;
.source "AsyncCameraThreadComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/AsyncCameraThreadComponent$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AsyncCameraThreadComponent$1;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1$1;->this$1:Lcom/htc/camera/component/AsyncCameraThreadComponent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1$1;->this$1:Lcom/htc/camera/component/AsyncCameraThreadComponent$1;

    iget-object v0, v0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->onWorkerThreadRunning()V

    .line 124
    return-void
.end method
