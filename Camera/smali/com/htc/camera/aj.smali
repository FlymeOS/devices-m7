.class public interface abstract Lcom/htc/camera/aj;
.super Ljava/lang/Object;
.source "IThumbnailImageManager.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# virtual methods
.method public abstract addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
.end method

.method public abstract addNewMedia(Lcom/htc/camera/media/MediaInfo;)V
.end method

.method public abstract disableAutoUpdate()Lcom/htc/camera/Handle;
.end method

.method public abstract enableAutoUpdate(Lcom/htc/camera/Handle;)V
.end method

.method public abstract ignoreCapture(Lcom/htc/camera/CaptureHandle;)V
.end method

.method public abstract updateThumbnailImageDirectly(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract waitForSavingMedia(Lcom/htc/camera/CaptureHandle;)V
.end method
