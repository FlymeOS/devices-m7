.class Lcom/htc/camera/component/PanoramaUI2$7;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$7;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1061
    check-cast p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/PanoramaUI2$7;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
            ">;",
            "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v0, p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".+/[0-9]{3}PANOR$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$7;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$700(Lcom/htc/camera/component/PanoramaUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start album by PanoramaUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$7;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p3}, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->setHandled()V

    .line 1072
    :cond_0
    return-void
.end method
