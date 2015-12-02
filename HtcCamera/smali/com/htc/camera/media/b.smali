.class public final Lcom/htc/camera/media/b;
.super Lcom/htc/camera/component/t;
.source "ThumbnailImagePoolBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/media/ThumbnailImagePool;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Thumbnail Image Pool"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/media/ThumbnailImagePool;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/media/ThumbnailImagePool;

    invoke-direct {v0, p1}, Lcom/htc/camera/media/ThumbnailImagePool;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/media/b;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/media/ThumbnailImagePool;

    move-result-object v0

    return-object v0
.end method
