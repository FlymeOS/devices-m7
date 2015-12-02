.class public interface abstract Lcom/htc/camera/ae;
.super Ljava/lang/Object;
.source "IResolutionProvider.java"


# virtual methods
.method public abstract getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;
.end method

.method public abstract getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;",
            "Lcom/htc/camera/Resolution;",
            ")",
            "Lcom/htc/camera/Resolution;"
        }
    .end annotation
.end method

.method public abstract getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
.end method
