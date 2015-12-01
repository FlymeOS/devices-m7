.class final Lcom/htc/camera/CameraThread$InfoListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 3428
    iput-object p1, p0, Lcom/htc/camera/CameraThread$InfoListener;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V
    .locals 0

    .prologue
    .line 3428
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread$InfoListener;-><init>(Lcom/htc/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/htc/camera/CameraThread$InfoListener;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/htc/camera/event/Event;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/MediaRecorderInfoEventArgs;

    invoke-direct {v2, p1, p2, p3}, Lcom/htc/camera/MediaRecorderInfoEventArgs;-><init>(Landroid/media/MediaRecorder;II)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 3530
    return-void
.end method
