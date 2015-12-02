.class Lcom/htc/camera/CameraThread$17;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/htc/camera/CameraThread$17;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/htc/camera/CameraThread$17;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->resumeVideoRecordingInternal()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$1800(Lcom/htc/camera/CameraThread;)V

    .line 2879
    return-void
.end method
