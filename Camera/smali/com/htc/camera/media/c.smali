.class final Lcom/htc/camera/media/c;
.super Lcom/htc/camera/component/ProxyComponent;
.source "ThumbnailImagePoolProxy.java"

# interfaces
.implements Lcom/htc/camera/media/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ProxyComponent",
        "<",
        "Lcom/htc/camera/media/a;",
        ">;",
        "Lcom/htc/camera/media/a;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 19
    const-string v0, "Thumbnail Image Pool (Proxy)"

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/htc/camera/media/a;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/component/ProxyComponent;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/component/au;Ljava/lang/Class;)V

    .line 20
    return-void
.end method


# virtual methods
.method public createThumbnailImage(Landroid/graphics/Bitmap;I)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lcom/htc/camera/media/a;->createThumbnailImage(Landroid/graphics/Bitmap;I)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createThumbnailImage(Landroid/graphics/Bitmap;Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 35
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/media/a;->createThumbnailImage(Landroid/graphics/Bitmap;Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    aput-object v2, v1, v3

    const-class v2, Lcom/htc/camera/io/Path;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createThumbnailImage(Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/camera/media/a;->createThumbnailImage(Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lcom/htc/camera/io/Path;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createThumbnailImage([BI)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1, p2}, Lcom/htc/camera/media/a;->createThumbnailImage([BI)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createThumbnailImage([BLcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 53
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 54
    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/media/a;->createThumbnailImage([BLcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v3

    const-class v2, Lcom/htc/camera/io/Path;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createThumbnailImage(Lcom/htc/camera/Handle;Lcom/htc/camera/io/Path;J)V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 62
    instance-of v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    if-eqz v1, :cond_4

    .line 65
    check-cast p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    .line 66
    iget-object v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->parameterTypes:[Ljava/lang/Class;

    aget-object v1, v1, v4

    const-class v2, Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_1

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/media/a;->createThumbnailImage(Landroid/graphics/Bitmap;Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    .line 82
    :goto_0
    invoke-virtual {p1}, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->close()Lcom/htc/camera/CloseableHandle;

    .line 91
    :goto_1
    return-void

    .line 71
    :cond_0
    const-string v0, "createThumbnailImage"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    aput-object v2, v1, v4

    const-class v2, Lcom/htc/camera/io/Path;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->parameterTypes:[Ljava/lang/Class;

    aget-object v1, v1, v4

    const-class v2, [B

    if-ne v1, v2, :cond_3

    .line 75
    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/media/a;->createThumbnailImage([BLcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "createThumbnailImage"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v4

    const-class v2, Lcom/htc/camera/io/Path;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/media/c;->beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    goto/16 :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/media/c;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnailImage() - Unknown delay invocation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_4
    if-eqz v0, :cond_5

    .line 87
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/camera/media/a;->createThumbnailImage(Lcom/htc/camera/Handle;Lcom/htc/camera/io/Path;J)V

    goto/16 :goto_1

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/media/c;->TAG:Ljava/lang/String;

    const-string v1, "IThumbnailImagePool() - Cannot find target interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getThumbnailImage(Lcom/htc/camera/io/Path;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/camera/media/c;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/htc/camera/media/a;->getThumbnailImage(Lcom/htc/camera/io/Path;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
