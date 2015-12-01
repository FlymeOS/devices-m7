.class final Lcom/htc/camera/sina/GifResolutionProvider;
.super Lcom/htc/camera/DefaultPhotoResolutionProvider;
.source "GifResolutionProvider.java"


# static fields
.field public static GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

.field private static m_GifResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    if-ne v0, v1, :cond_1

    .line 46
    sget-object v0, Lcom/htc/camera/Resolution;->SINA_CAMERA_GIF_16_9_320x184:Lcom/htc/camera/Resolution;

    sput-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/camera/sina/GifResolutionProvider;->initializeDefaultResolutions()V

    .line 53
    const-string v0, "pref_gif_resolution"

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 54
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    if-ne v0, v1, :cond_2

    .line 48
    sget-object v0, Lcom/htc/camera/Resolution;->SINA_CAMERA_GIF_5_3_320x192:Lcom/htc/camera/Resolution;

    sput-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_3x2:Lcom/htc/camera/AspectRatio;

    if-ne v0, v1, :cond_0

    .line 50
    sget-object v0, Lcom/htc/camera/Resolution;->SINA_CAMERA_GIF_3_2_320x208:Lcom/htc/camera/Resolution;

    sput-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    goto :goto_0
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 61
    return-void
.end method

.method private static initializeDefaultResolutions()V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/Resolution;

    sget-object v2, Lcom/htc/camera/Resolution;->PHOTO_16_9_1920x1088:Lcom/htc/camera/Resolution;

    sget-object v3, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Resolution;-><init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution$Category;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_0
    return-void

    .line 190
    :pswitch_0
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/Resolution;

    sget-object v2, Lcom/htc/camera/Resolution;->PHOTO_16_9_1920x1088:Lcom/htc/camera/Resolution;

    sget-object v3, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Resolution;-><init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution$Category;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :pswitch_1
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/Resolution;

    sget-object v2, Lcom/htc/camera/Resolution;->PHOTO_5_3_1280x768:Lcom/htc/camera/Resolution;

    sget-object v3, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Resolution;-><init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution$Category;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
    .locals 2

    .prologue
    .line 93
    const-string v0, "GifResolutionProvider"

    const-string v1, "getContactPhotoResolution() - Gif mode did not support Contact photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;
    .locals 3
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

    .line 118
    if-nez p2, :cond_0

    .line 120
    const-string v1, "GifResolutionProvider"

    const-string v2, "getResolution() - No resolution list specified"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const-string v1, "GifResolutionProvider"

    const-string v2, "getResolution() - Empty resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto :goto_0
.end method

.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 11
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
    const/4 v7, 0x0

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/htc/camera/sina/GifResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    if-nez v0, :cond_0

    .line 141
    const-string v0, "GifResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Empty picture size list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 146
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 147
    invoke-static {v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Lcom/htc/camera/Resolution;)Lcom/htc/camera/AspectRatio;

    move-result-object v4

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    .line 149
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 151
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 152
    invoke-static {v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Landroid/hardware/Camera$Size;)Lcom/htc/camera/AspectRatio;

    move-result-object v6

    .line 153
    invoke-virtual {v6, v4}, Lcom/htc/camera/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v6, "GifResolutionProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getResolutionList - support res :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 158
    :cond_2
    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 163
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/htc/camera/Resolution;

    .line 166
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v5}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 167
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v8, v3}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(IILjava/util/List;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 168
    const-string v1, "GifResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionList - get nearist driver supportted resolution: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nearist res ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/htc/camera/Resolution;

    iget-object v1, p0, Lcom/htc/camera/sina/GifResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iget-object v5, v5, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    sget-object v6, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(Landroid/content/Context;IILcom/htc/camera/CameraMode;Lcom/htc/camera/PhotoSizeMode;Lcom/htc/camera/Resolution$Category;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    :cond_4
    sput-object v9, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    .line 172
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->m_GifResolutions:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    const-string v0, "GifResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionSettingsKey() - Unsupported camera type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    const-string v0, "pref_gif_resolution"

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 2
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
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v0
.end method
