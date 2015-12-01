.class public interface abstract Lcom/htc/camera/media/a;
.super Ljava/lang/Object;
.source "IThumbnailImagePool.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# virtual methods
.method public abstract createThumbnailImage(Landroid/graphics/Bitmap;I)Lcom/htc/camera/Handle;
.end method

.method public abstract createThumbnailImage(Landroid/graphics/Bitmap;Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
.end method

.method public abstract createThumbnailImage(Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
.end method

.method public abstract createThumbnailImage([BI)Lcom/htc/camera/Handle;
.end method

.method public abstract createThumbnailImage([BLcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
.end method

.method public abstract createThumbnailImage(Lcom/htc/camera/Handle;Lcom/htc/camera/io/Path;J)V
.end method

.method public abstract getThumbnailImage(Lcom/htc/camera/io/Path;I)Landroid/graphics/Bitmap;
.end method
