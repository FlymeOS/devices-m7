.class public Lcom/htc/camera/bi/LaunchGalleryStatisticController;
.super Lcom/htc/camera/component/cm;
.source "LaunchGalleryStatisticController.java"


# instance fields
.field private mHasChanged:Z

.field protected mLaunchGalleryHistory:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 31
    const-string v0, "LaunchGalleryStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/LaunchGalleryStatisticController;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 42
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->loadFromPreference()V

    .line 47
    const-class v0, Lcom/htc/camera/ui/IThumbnailImageButton;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IThumbnailImageButton;

    .line 48
    if-eqz v0, :cond_0

    .line 50
    sget-object v2, Lcom/htc/camera/ui/IThumbnailImageButton;->EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;-><init>(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)V

    invoke-interface {v0, v2, v3}, Lcom/htc/camera/ui/IThumbnailImageButton;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 63
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;-><init>(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 81
    return-void
.end method

.method protected loadFromPreference()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 89
    const-string v1, "pref_bi_launch_gallery_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mLaunchGalleryHistory:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected saveToPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mLaunchGalleryHistory:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    iput v3, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mLaunchGalleryHistory:I

    .line 111
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 113
    const-string v2, "pref_bi_launch_gallery_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 116
    iput-boolean v3, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mHasChanged:Z

    .line 117
    return-void
.end method
