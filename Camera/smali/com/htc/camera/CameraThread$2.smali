.class Lcom/htc/camera/CameraThread$2;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/camera/CameraThread$2;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 363
    check-cast p7, Lcom/htc/camera/HTCCamera;

    sget-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInMediaRecorder:Lcom/htc/camera/CameraThreadBlockReason;

    invoke-virtual {p7, v0}, Lcom/htc/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V

    .line 364
    return-void
.end method
