.class Lcom/htc/camera/CameraThread$14;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/htc/camera/CameraThread$14;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$14;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/htc/camera/CameraThread$14;->val$videoPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/htc/camera/CameraThread$14;->val$videoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - delete failed video file"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - Not to Save Video file due to it is too short"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    return-void

    .line 1965
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - delete failed video file fail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - delete failed video file but its path is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
