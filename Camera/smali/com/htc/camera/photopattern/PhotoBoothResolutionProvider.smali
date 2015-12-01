.class public Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;
.super Lcom/htc/camera/DefaultPhotoResolutionProvider;
.source "PhotoBoothResolutionProvider.java"


# static fields
.field private static final mDefaultMode:Lcom/htc/camera/PhotoSizeMode;


# instance fields
.field private mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

.field private mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

.field private mNumofSupportedResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    sput-object v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mDefaultMode:Lcom/htc/camera/PhotoSizeMode;

    .line 50
    const-string v0, "pref_photobooth_resolution"

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 23
    sget-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mNumofSupportedResolution:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    .line 59
    iput-object p2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

    .line 60
    return-void
.end method


# virtual methods
.method public getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
    .locals 2

    .prologue
    .line 77
    const-string v0, "PhotoBoothResolutionProvider"

    const-string v1, "getContactPhotoResolution() - PhotoBooth did not support Contact photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->cameraType:Lcom/htc/camera/CameraType;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->access$000(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    :cond_0
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 89
    iget-object v6, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    sget-object v7, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    if-ne v6, v7, :cond_2

    .line 91
    if-nez v3, :cond_1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 113
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_b

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    .line 95
    goto :goto_1

    .line 97
    :cond_2
    iget-object v6, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    sget-object v7, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    if-ne v6, v7, :cond_4

    .line 99
    if-nez v2, :cond_3

    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 100
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v2}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_b

    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 103
    goto :goto_1

    .line 107
    :cond_4
    if-nez v1, :cond_5

    move-object v1, v2

    move-object v2, v3

    .line 108
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_b

    move-object v1, v2

    move-object v2, v3

    .line 111
    goto :goto_1

    .line 114
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 119
    if-eqz v0, :cond_7

    .line 121
    const-string v2, "PhotoBoothResolutionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumResolution : W="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", H="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->cameraType:Lcom/htc/camera/CameraType;
    invoke-static {v2}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->access$000(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/camera/CameraType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 123
    :cond_8
    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    invoke-direct {v2, v0, p1}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;-><init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/CameraType;)V

    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    goto :goto_2

    .line 126
    :cond_9
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 128
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->pixelSize:I
    invoke-static {v3}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->access$100(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)I

    move-result v3

    if-le v2, v3, :cond_7

    .line 130
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    invoke-virtual {v2, v0}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->setResolution(Lcom/htc/camera/Resolution;)V

    goto :goto_2

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mMaximumResolutionSize:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->resi:Lcom/htc/camera/Resolution;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->access$200(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)Lcom/htc/camera/Resolution;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public getNumofSupportedResolution()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mNumofSupportedResolution:I

    return v0
.end method

.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 7
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
    .line 140
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 146
    iget-object v4, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v4, v5}, Lcom/htc/camera/PhotoSizeMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "PhotoBoothResolutionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResolutionList() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resli:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 156
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mNumofSupportedResolution:I

    .line 157
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 164
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v6

    mul-int/2addr v2, v6

    .line 165
    if-lt v2, v1, :cond_2

    if-nez v1, :cond_5

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_3
    move-object v3, v1

    move v1, v0

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    const-string v0, "PhotoBoothResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionList() - small Resolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    .line 176
    :cond_4
    return-object v0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const-string v0, "PhotoBoothResolutionProvider"

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

    .line 72
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "pref_photobooth_resolution"

    goto :goto_0

    .line 66
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
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->mCurrentMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object v0
.end method
