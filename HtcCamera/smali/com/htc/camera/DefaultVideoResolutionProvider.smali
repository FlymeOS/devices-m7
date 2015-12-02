.class public Lcom/htc/camera/DefaultVideoResolutionProvider;
.super Ljava/lang/Object;
.source "DefaultVideoResolutionProvider.java"

# interfaces
.implements Lcom/htc/camera/am;


# static fields
.field private static final m_DefaultResolutions:Ljava/util/Hashtable;
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

.field private static final m_MmsResolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_ResolutionSettingKeys:[Ljava/lang/String;

.field private static final m_ServiceResolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/camera/CameraConfigFileReader;->getVideoResolutionTable()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_capture_resolution_video_main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_capture_resolution_video_3D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_capture_resolution_video_2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Lcom/htc/camera/DefaultVideoResolutionProvider;->initializeDefaultResolutions()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 50
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 54
    return-void
.end method

.method private getHQServiceResolutions(Lcom/htc/camera/CameraType;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v0, "DefaultVideoResolutionProvider"

    const-string v2, "getServiceHQResolutions() - resolution:"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    return-object v1
.end method

.method private getResolutionFromSettings(Ljava/lang/String;)Lcom/htc/camera/Resolution;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-object v1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
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

.method private static initializeDefaultResolutions()V
    .locals 5

    .prologue
    .line 277
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 278
    sget-object v1, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    sget-object v3, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v2, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_0

    .line 284
    sget-object v2, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    sget-object v3, Lcom/htc/camera/Resolution;->Video_QVGA_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    sget-object v2, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    sget-object v3, Lcom/htc/camera/Resolution;->Video_QCIF_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v2, "DefaultVideoResolutionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main cam size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " front cam size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v2, v2, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 291
    sget-object v2, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 295
    sget-object v1, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_2
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_QCIF_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method


# virtual methods
.method public getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_0
.end method

.method public getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;
    .locals 5
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
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 108
    if-nez p2, :cond_0

    .line 110
    const-string v0, "DefaultVideoResolutionProvider"

    const-string v2, "getResolution() - No resolution list specified"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 197
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "DefaultVideoResolutionProvider"

    const-string v2, "getResolution() - Empty resolution list"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 116
    goto :goto_0

    .line 120
    :cond_1
    if-nez p3, :cond_2

    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/camera/DefaultVideoResolutionProvider;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultVideoResolutionProvider;->getResolutionFromSettings(Ljava/lang/String;)Lcom/htc/camera/Resolution;

    move-result-object p3

    .line 124
    :cond_2
    if-eqz p3, :cond_4

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 128
    invoke-virtual {v0, p3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isDefaultMaxMainVideoResolution()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 138
    :cond_5
    invoke-static {p1}, Lcom/htc/camera/CameraConfigFileReader;->getDefaultVideoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 139
    if-nez v0, :cond_a

    .line 141
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 184
    const-string v0, "DefaultVideoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolution() - Unknown camera type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 191
    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 144
    :pswitch_0
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    sget-object v2, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v2}, Lcom/htc/camera/ScreenResolution;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 166
    const-string v0, "DefaultVideoResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolution() - Unknown screen resolution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :pswitch_1
    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 148
    goto :goto_1

    .line 151
    :pswitch_2
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 152
    goto :goto_1

    .line 154
    :pswitch_3
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 155
    goto :goto_1

    .line 157
    :pswitch_4
    sget-object v0, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 158
    goto :goto_1

    .line 160
    :pswitch_5
    sget-object v0, Lcom/htc/camera/Resolution;->Video_HVGA480:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 161
    goto :goto_1

    .line 163
    :pswitch_6
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 164
    goto :goto_1

    .line 173
    :pswitch_7
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720P_3D:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 174
    goto :goto_1

    .line 177
    :pswitch_8
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isDefaultMaxFrontVideoResolution()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    .line 180
    :cond_7
    sget-object v0, Lcom/htc/camera/Resolution;->Video_VGA:Lcom/htc/camera/Resolution;

    move-object v1, v0

    .line 181
    goto :goto_1

    .line 196
    :cond_8
    const-string v2, "DefaultVideoResolutionProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolution() - Cannot find default resolution in list : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    goto/16 :goto_0

    .line 196
    :cond_9
    const-string v0, "Null"

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 217
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    iget-object v1, p0, Lcom/htc/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_0
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    .line 220
    :pswitch_0
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->hasVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 229
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultVideoResolutionProvider;->getHQServiceResolutions(Lcom/htc/camera/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    sget-object v0, Lcom/htc/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    const-string v0, "DefaultVideoResolutionProvider"

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

    .line 253
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    const-string v0, "pref_capture_resolution_video_main"

    goto :goto_0

    .line 248
    :pswitch_1
    const-string v0, "pref_capture_resolution_video_3D"

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "pref_capture_resolution_video_2nd"

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
