.class public Lcom/htc/camera/io/MediaSaveEventArgs;
.super Lcom/htc/camera/media/MediaEventArgs;
.source "MediaSaveEventArgs.java"


# instance fields
.field public final result:Lcom/htc/camera/io/FileSaveResult;

.field public final savingHandle:Lcom/htc/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/io/SaveMediaTask;Lcom/htc/camera/io/FileSaveResult;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/htc/camera/io/SaveMediaTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/htc/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/htc/camera/io/SaveMediaTask;->isLastMedia:Z

    :goto_2
    invoke-direct {p0, v2, v1, v0}, Lcom/htc/camera/media/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/media/MediaInfo;Z)V

    .line 29
    iput-object p1, p0, Lcom/htc/camera/io/MediaSaveEventArgs;->savingHandle:Lcom/htc/camera/Handle;

    .line 30
    iput-object p3, p0, Lcom/htc/camera/io/MediaSaveEventArgs;->result:Lcom/htc/camera/io/FileSaveResult;

    .line 31
    return-void

    :cond_0
    move-object v2, v0

    .line 28
    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method
