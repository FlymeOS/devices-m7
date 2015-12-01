.class public interface abstract Lcom/htc/camera/aa;
.super Ljava/lang/Object;
.source "IPhotoResolutionProvider.java"

# interfaces
.implements Lcom/htc/camera/ae;


# virtual methods
.method public abstract getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
.end method

.method public abstract getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;"
        }
    .end annotation
.end method
