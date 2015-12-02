.class public Lcom/htc/camera/menu/ResolutionMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "ResolutionMenuItem.java"


# instance fields
.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoRatioItem:Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

.field private m_SepMenuItem:Lcom/htc/camera/menu/SeparatorMenuItem;

.field private final mode:Lcom/htc/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;I)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    .line 70
    iput-object p2, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    .line 72
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/ResolutionMenuItem;->initPhotoRatioItem(Lcom/htc/camera/HTCCamera;)V

    .line 76
    invoke-direct {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->setCameraThreadListener()V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/menu/ResolutionMenuItem;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/menu/ResolutionMenuItem;->onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method private generateSummary(Lcom/htc/camera/Resolution;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    const-string v0, ""

    .line 311
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getResolutionCategoryResId()I

    move-result v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getResolutionScreenRatioDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_1
    return-object v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/camera/Resolution;->getResolutionDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initPhotoRatioItem(Lcom/htc/camera/HTCCamera;)V
    .locals 7

    .prologue
    const v6, 0x7f08023c

    .line 82
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    if-eq v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/htc/camera/menu/ResolutionMenuItem$4;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v5, v6

    .line 103
    :goto_0
    new-instance v0, Lcom/htc/camera/menu/ResolutionMenuItem$1;

    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/HTCCamera;

    const-string v3, "pref_camera_image_ratio"

    const v4, 0x7f080238

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/menu/ResolutionMenuItem$1;-><init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_PhotoRatioItem:Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    .line 122
    :cond_0
    new-instance v1, Lcom/htc/camera/menu/SeparatorMenuItem;

    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    const v2, 0x7f0801ab

    invoke-direct {v1, v0, v2}, Lcom/htc/camera/menu/SeparatorMenuItem;-><init>(Lcom/htc/camera/HTCCamera;I)V

    iput-object v1, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_SepMenuItem:Lcom/htc/camera/menu/SeparatorMenuItem;

    .line 123
    return-void

    .line 91
    :pswitch_0
    const v5, 0x7f080239

    .line 92
    goto :goto_0

    .line 94
    :pswitch_1
    const v5, 0x7f08023a

    .line 95
    goto :goto_0

    .line 97
    :pswitch_2
    const v5, 0x7f08023b

    .line 98
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private linkToCameraThread()V
    .locals 3

    .prologue
    .line 154
    const-string v0, "ResolutionMenuItem"

    const-string v1, "linkToCameraThread() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 158
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    .line 161
    const-string v0, "ResolutionMenuItem"

    const-string v1, "linkToCameraThread() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ICaptureResolutionManager;

    .line 167
    new-instance v2, Lcom/htc/camera/menu/ResolutionMenuItem$3;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/menu/ResolutionMenuItem$3;-><init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;)V

    .line 180
    if-eqz v1, :cond_1

    .line 182
    iget-object v0, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 183
    iget-object v0, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 188
    :goto_1
    const-string v0, "ResolutionMenuItem"

    const-string v1, "linkToCameraThread() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "ResolutionMenuItem"

    const-string v1, "linkToCameraThread() - resolutionManager is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->updateContent()V

    .line 197
    return-void
.end method

.method private onResolutionSelected(Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 206
    if-nez v0, :cond_0

    .line 208
    const-string v0, "ResolutionMenuItem"

    const-string v1, "onResolutionSelected() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v1, Lcom/htc/camera/menu/ResolutionMenuItem$4;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v2, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    iget-object v1, p1, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolution(Lcom/htc/camera/Resolution;)V

    .line 226
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->resolutionSelectedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    iget-object v2, p1, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/htc/camera/Resolution;

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 231
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 219
    :pswitch_1
    iget-object v1, p1, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolution(Lcom/htc/camera/Resolution;)V

    goto :goto_1

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 234
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getResolutionDescription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCameraThreadListener()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "ResolutionMenuItem"

    const-string v1, "setCameraThreadListener() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 133
    const-string v0, "ResolutionMenuItem"

    const-string v1, "setCameraThreadListener() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v1, Lcom/htc/camera/menu/ResolutionMenuItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/ResolutionMenuItem$2;-><init>(Lcom/htc/camera/menu/ResolutionMenuItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "ResolutionMenuItem"

    const-string v1, "setCameraThreadListener() - Cannot link to camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    const-string v0, "ResolutionMenuItem"

    const-string v1, "setCameraThreadListener() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public updateContent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 245
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ICaptureResolutionManager;

    .line 246
    if-nez v1, :cond_0

    .line 248
    const-string v0, "ResolutionMenuItem"

    const-string v1, "updateContent() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v6, v2

    .line 252
    :goto_1
    if-nez v6, :cond_2

    .line 254
    const-string v0, "ResolutionMenuItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContent() - No resolution list for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v2, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v6, v2

    goto :goto_1

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v2, v3, :cond_5

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    move-object v2, v1

    .line 261
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    const-string v3, ""

    move v4, v5

    .line 279
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 281
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 282
    new-instance v7, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;

    invoke-direct {v7, p0, v0, v1}, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Resolution;)V

    .line 283
    invoke-virtual {v2, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 285
    invoke-direct {p0, v1}, Lcom/htc/camera/menu/ResolutionMenuItem;->generateSummary(Lcom/htc/camera/Resolution;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v7, v10}, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->setChecked(Z)V

    .line 289
    :cond_3
    iget-object v8, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->mode:Lcom/htc/camera/CameraMode;

    sget-object v9, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v8, v9, :cond_4

    .line 290
    invoke-virtual {v1, v0}, Lcom/htc/camera/Resolution;->getPhotoMenuItemSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/camera/menu/ResolutionMenuItem$SubMenuItem;->setSummary(Ljava/lang/String;)V

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 259
    :cond_5
    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    move-object v2, v1

    goto :goto_2

    .line 294
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ResolutionMenuItem;->setItems(Ljava/util/List;)V

    .line 296
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 298
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    invoke-direct {p0, v0}, Lcom/htc/camera/menu/ResolutionMenuItem;->generateSummary(Lcom/htc/camera/Resolution;)Ljava/lang/String;

    move-result-object v3

    .line 302
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v10}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 306
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/camera/menu/ResolutionMenuItem;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
