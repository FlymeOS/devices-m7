.class public Lcom/htc/camera/ui/ThumbnailImageEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "ThumbnailImageEventArgs.java"


# instance fields
.field public final mediaInfo:Lcom/htc/camera/media/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/htc/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 26
    return-void
.end method
