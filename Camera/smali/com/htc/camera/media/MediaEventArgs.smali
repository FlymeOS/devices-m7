.class public Lcom/htc/camera/media/MediaEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field public final captureHandle:Lcom/htc/camera/CaptureHandle;

.field public final isLastMediaInCapture:Z

.field public final mediaInfo:Lcom/htc/camera/media/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/media/MediaInfo;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/htc/camera/media/MediaEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 50
    iput-boolean p3, p0, Lcom/htc/camera/media/MediaEventArgs;->isLastMediaInCapture:Z

    .line 51
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/htc/camera/media/MediaEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 52
    return-void

    .line 51
    :cond_0
    new-instance p2, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {p2}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    goto :goto_0
.end method
