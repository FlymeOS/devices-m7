.class public Lcom/htc/camera/DefaultPhotoResolutionProvider;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"

# interfaces
.implements Lcom/htc/camera/aa;


# static fields
.field protected static m_DefaultResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m_ResolutionSettingKeys:[Ljava/lang/String;


# instance fields
.field protected final cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_capture_resolution_photo_main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_capture_resolution_photo_3D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_capture_resolution_photo_2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->initializeDefaultResolutions()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 76
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 145
    return-void
.end method

.method private getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/htc/camera/AspectRatio;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 796
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 797
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 799
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 800
    invoke-static {v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Landroid/hardware/Camera$Size;)Lcom/htc/camera/AspectRatio;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 801
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 803
    :cond_1
    return-object v3
.end method

.method private getMegaPixels(II)D
    .locals 4

    .prologue
    .line 203
    mul-int v0, p1, p2

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMegaPixels(Landroid/hardware/Camera$Size;)D
    .locals 2

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(II)D

    move-result-wide v0

    .line 199
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getResolutionDescription(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 402
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d x %d (%.1fMP, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1, p2}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/AspectRatio;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(II)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getResolutionFromSettings(Ljava/lang/String;)Lcom/htc/camera/Resolution;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 385
    if-nez p1, :cond_0

    .line 388
    :goto_0
    return-object v1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/htc/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/htc/camera/Resolution;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getResolutionList(Lcom/htc/camera/CameraController;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraController;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 472
    if-nez p1, :cond_0

    .line 474
    const-string v0, "cameraController"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 650
    :goto_0
    return-object v4

    .line 479
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v6

    .line 480
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 481
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 482
    if-nez v0, :cond_1

    .line 484
    const-string v0, "DefaultPhotoResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Empty picture size list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    new-instance v0, Lcom/htc/camera/q;

    invoke-direct {v0, v4}, Lcom/htc/camera/q;-><init>(Lcom/htc/camera/DefaultPhotoResolutionProvider$1;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 491
    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(Landroid/hardware/Camera$Size;)D

    move-result-wide v7

    .line 492
    invoke-static {v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Landroid/hardware/Camera$Size;)Lcom/htc/camera/AspectRatio;

    move-result-object v9

    .line 493
    const-string v2, "DefaultPhotoResolutionProvider"

    const-string v3, "getResolutionList("

    const-string v10, ") - Max picture size is "

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v3, v6, v10, v11}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const-wide v10, 0x4010666666666666L    # 4.1

    cmpl-double v0, v7, v10

    if-ltz v0, :cond_2

    .line 508
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v3, "Pick resolution as sensorRatio"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v5, v9}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    .line 510
    invoke-direct {p0, v0, v9}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v3

    .line 511
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 512
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 513
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 531
    :cond_2
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 532
    iget v3, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-static {v3, v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    .line 533
    const-string v3, "DefaultPhotoResolutionProvider"

    const-string v7, "getResolutionList("

    const-string v8, ") - Screen ratio is "

    invoke-static {v3, v7, v6, v8, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    invoke-virtual {v0, v9}, Lcom/htc/camera/AspectRatio;->isWiderThan(Lcom/htc/camera/AspectRatio;)Z

    move-result v3

    .line 538
    if-eq v0, v9, :cond_5

    .line 540
    if-eqz v3, :cond_4

    .line 545
    const-string v3, "DefaultPhotoResolutionProvider"

    const-string v7, "Pick resolution as screenRatio"

    invoke-static {v3, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, v5, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v3

    .line 547
    invoke-direct {p0, v3, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 591
    :goto_2
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    if-eq v9, v0, :cond_3

    .line 595
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v4, "Pick resolution as Ratio_1x1"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    sget-object v4, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 604
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 605
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-le v0, v5, :cond_7

    .line 609
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 555
    :cond_4
    const-string v3, "DefaultPhotoResolutionProvider"

    const-string v7, "Pick resolution as screenRatio"

    invoke-static {v3, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v5, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v3

    .line 557
    invoke-direct {p0, v3, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 560
    goto :goto_2

    .line 565
    :cond_5
    sget-object v3, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v0, v3}, Lcom/htc/camera/AspectRatio;->isWiderThan(Lcom/htc/camera/AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v3, "Pick resolution as Ratio_4x3"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    sget-object v3, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 574
    goto :goto_2

    .line 581
    :cond_6
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v3, "Pick resolution as Ratio_4x3"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getCandidatePhotoSizes(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    .line 583
    sget-object v3, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    .line 612
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-le v0, v5, :cond_8

    .line 614
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 612
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 617
    :cond_8
    if-eqz v4, :cond_9

    .line 619
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-le v0, v5, :cond_9

    .line 620
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_9
    move v5, v1

    .line 625
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 627
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 628
    const-string v7, "DefaultPhotoResolutionProvider"

    const-string v8, "getResolutionList("

    const-string v9, ") - "

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v6, v9, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 625
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_a
    move v5, v1

    .line 630
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_b

    .line 632
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 633
    const-string v7, "DefaultPhotoResolutionProvider"

    const-string v8, "getResolutionList("

    const-string v9, ") - "

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v6, v9, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 630
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    .line 635
    :cond_b
    if-eqz v4, :cond_c

    .line 637
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 639
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 640
    const-string v5, "DefaultPhotoResolutionProvider"

    const-string v7, "getResolutionList("

    const-string v8, ") - "

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v7, v6, v8, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 645
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {p0, v3, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->createResolutionList(Ljava/util/List;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 647
    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->createResolutionList(Ljava/util/List;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 648
    if-eqz v4, :cond_d

    .line 649
    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {p0, v4, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->createResolutionList(Ljava/util/List;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    move-object v4, v0

    .line 650
    goto/16 :goto_0
.end method

.method private getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/PhotoSizeMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 416
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    const-string v1, "DefaultPhotoResolutionProvider"

    const-string v2, "getResolutionList() - Trying to get resolution list from driver directly"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 422
    invoke-direct {p0, v1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraController;)Ljava/util/List;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 424
    sget-object v1, Lcom/htc/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_1
    :goto_0
    sget-object v1, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 465
    const-string v0, "DefaultPhotoResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionList() - Unknown camera type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    :goto_1
    :pswitch_0
    return-object v0

    .line 426
    :cond_2
    const-string v1, "DefaultPhotoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionList() - Fail to get resolution list for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_3
    const-string v1, "DefaultPhotoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionList() - No camera controller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    if-eqz v0, :cond_5

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 439
    iget-object v3, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    if-ne v3, p2, :cond_4

    .line 440
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 443
    goto :goto_1

    .line 450
    :pswitch_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 451
    sget-object p2, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    .line 453
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    if-eqz v0, :cond_8

    .line 455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 457
    iget-object v3, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    if-ne v3, p2, :cond_7

    .line 458
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 461
    goto :goto_1

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static initializeDefaultResolutions()V
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/htc/camera/CameraConfigFileReader;->getResolutionTable()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    .line 696
    return-void
.end method

.method private selectPictureSizesByRule(Ljava/util/List;Lcom/htc/camera/AspectRatio;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/htc/camera/AspectRatio;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 751
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 790
    :goto_0
    return-object v0

    .line 754
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 755
    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(Landroid/hardware/Camera$Size;)D

    move-result-wide v2

    .line 756
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 757
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 759
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 760
    const/4 v0, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v0, v8, :cond_2

    .line 762
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v0

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v8, v2

    .line 763
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 766
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 767
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v6, :cond_6

    .line 769
    const-string v0, "DefaultPhotoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sampleSizes.get("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "):"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.1fMP"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_3

    .line 773
    const-string v7, "DefaultPhotoResolutionProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "candidateSizes.get("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "):"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionDescription(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(Landroid/hardware/Camera$Size;)D

    move-result-wide v9

    cmpg-double v0, v7, v9

    if-gtz v0, :cond_5

    .line 776
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    const-string v7, "DefaultPhotoResolutionProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add index "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(Landroid/hardware/Camera$Size;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_3
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 782
    :cond_4
    const-string v7, "DefaultPhotoResolutionProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "choose an index "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getMegaPixels(Landroid/hardware/Camera$Size;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but has added!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 771
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_3

    :cond_6
    move-object v0, v1

    .line 790
    goto/16 :goto_0
.end method


# virtual methods
.method protected createResolutionList(Ljava/util/List;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/htc/camera/PhotoSizeMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sget-object v6, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    .line 157
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_2

    .line 159
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 160
    if-eqz v3, :cond_1

    .line 162
    new-instance v0, Lcom/htc/camera/Resolution;

    iget-object v1, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(Landroid/content/Context;IILcom/htc/camera/CameraMode;Lcom/htc/camera/PhotoSizeMode;Lcom/htc/camera/Resolution$Category;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    invoke-virtual {v6}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 166
    :pswitch_0
    sget-object v6, Lcom/htc/camera/Resolution$Category;->Medium:Lcom/htc/camera/Resolution$Category;

    goto :goto_2

    .line 169
    :pswitch_1
    sget-object v6, Lcom/htc/camera/Resolution$Category;->Small:Lcom/htc/camera/Resolution$Category;

    goto :goto_2

    :cond_2
    move-object v0, v7

    .line 174
    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 187
    const-string v2, "small_photo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/Resolution;->CONTACT_1_1_360x360:Lcom/htc/camera/Resolution;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/camera/Resolution;->CONTACT_1_1_720x720:Lcom/htc/camera/Resolution;

    goto :goto_0
.end method

.method public getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 213
    if-nez p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 220
    :cond_2
    const-string v1, "DefaultPhotoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize() - No camera controller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    sget-object v2, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 226
    sget-object v3, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    .line 229
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 230
    if-nez v1, :cond_4

    .line 232
    const-string v1, "DefaultPhotoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize() - No preview size list for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-static {p2}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Lcom/htc/camera/Resolution;)Lcom/htc/camera/AspectRatio;

    move-result-object v4

    .line 238
    invoke-static {v2, v3, v1, v4, v0}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(IILjava/util/List;Lcom/htc/camera/AspectRatio;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_0
.end method

.method public getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;
    .locals 7
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

    .prologue
    const/4 v0, 0x0

    const v6, 0x7de290

    const/4 v4, 0x0

    .line 284
    if-nez p2, :cond_1

    .line 286
    const-string v1, "DefaultPhotoResolutionProvider"

    const-string v2, "getResolution() - No resolution list specified"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 291
    const-string v1, "DefaultPhotoResolutionProvider"

    const-string v2, "getResolution() - Empty resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    if-nez p3, :cond_3

    .line 298
    invoke-virtual {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionFromSettings(Ljava/lang/String;)Lcom/htc/camera/Resolution;

    move-result-object p3

    .line 299
    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSmallRamDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-le v0, v6, :cond_3

    .line 304
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_3

    .line 306
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 307
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    mul-int/2addr v3, v5

    if-le v3, v6, :cond_0

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 314
    :cond_3
    if-eqz p3, :cond_5

    .line 316
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 318
    invoke-virtual {v0, p3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 324
    :cond_5
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_6
    const/4 v1, -0x1

    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    sget-object v3, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v5, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v5, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 352
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 358
    if-eqz v0, :cond_8

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_4
    if-ltz v3, :cond_b

    .line 362
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    invoke-virtual {v1, p3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 368
    :goto_5
    if-ltz v0, :cond_9

    .line 372
    :goto_6
    if-ltz v0, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 373
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    .line 327
    :pswitch_0
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v1, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    .line 330
    :pswitch_1
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-nez v0, :cond_6

    .line 332
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v1, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    .line 344
    :pswitch_2
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 348
    :pswitch_3
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 360
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    move v0, v2

    :cond_9
    move v2, v0

    .line 371
    goto/16 :goto_3

    .line 376
    :cond_a
    const-string v0, "DefaultPhotoResolutionProvider"

    const-string v1, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 2
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

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/PhotoSizeMode;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 659
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 668
    const-string v0, "DefaultPhotoResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionSettingsKey() - Unknown camera type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "pref_capture_resolution_photo_main"

    goto :goto_0

    .line 664
    :pswitch_1
    const-string v0, "pref_capture_resolution_photo_3D"

    goto :goto_0

    .line 666
    :pswitch_2
    const-string v0, "pref_capture_resolution_photo_2nd"

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 6
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

    .prologue
    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    invoke-static {}, Lcom/htc/camera/PhotoSizeMode;->values()[Lcom/htc/camera/PhotoSizeMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 682
    invoke-direct {p0, p1, v4}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)Ljava/util/List;

    move-result-object v5

    .line 683
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 684
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_1
    return-object v1
.end method
