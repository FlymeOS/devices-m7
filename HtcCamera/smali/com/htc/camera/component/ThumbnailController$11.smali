.class Lcom/htc/camera/component/ThumbnailController$11;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1111
    check-cast p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$11;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v1

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$1500(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video thumbnail created : Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v3}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$1600(Lcom/htc/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$1600(Lcom/htc/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v2, p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;->filePath:Lcom/htc/camera/io/Path;

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;
    invoke-static {v0, v2}, Lcom/htc/camera/component/ThumbnailController;->access$1702(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/Path;)Lcom/htc/camera/io/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :try_start_1
    iget-object v0, p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;->thumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v2, p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;->thumbnailImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/htc/camera/component/ThumbnailController;->access$1602(Lcom/htc/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1138
    return-void

    .line 1130
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/4 v2, 0x0

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/htc/camera/component/ThumbnailController;->access$1602(Lcom/htc/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1134
    :try_start_4
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/4 v3, 0x0

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/htc/camera/component/ThumbnailController;->access$1602(Lcom/htc/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1135
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailController$11;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/ThumbnailController;->access$1800(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error copying video thumbnail image"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
