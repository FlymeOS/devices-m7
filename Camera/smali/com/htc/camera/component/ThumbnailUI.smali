.class public Lcom/htc/camera/component/ThumbnailUI;
.super Lcom/htc/camera/component/cm;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/htc/camera/ui/IThumbnailImageButton;


# instance fields
.field private m_AnimationDownRatio:F

.field private m_AnimationUpRatio:F

.field private m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

.field private final m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_HasPendingClickEvent:Z

.field private m_IsEnableAfterLaunch:Z

.field private m_IsEnabled:Z

.field private m_IsFirstThumbnail:Z

.field private m_IsPhotoMode:Z

.field private m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

.field private final m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_ThumbnailButton:Landroid/view/View;

.field private m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

.field private m_ThumbnailDrawable:Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    const-string v0, "Thumbnail UI"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 70
    iput-boolean v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnabled:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 85
    new-instance v0, Lcom/htc/camera/component/ThumbnailUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ThumbnailUI$1;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 112
    new-instance v0, Lcom/htc/camera/component/ThumbnailUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ThumbnailUI$2;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ThumbnailUI;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/ThumbnailUI;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/ThumbnailUI;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->startAlbum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->createThumbnailImage()V

    return-void
.end method

.method static synthetic access$1402(Lcom/htc/camera/component/ThumbnailUI;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/ThumbnailUI;)Lcom/htc/camera/component/ThumbnailController;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/ThumbnailUI;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/ThumbnailUI;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V

    return-void
.end method

.method private clearThumbnailImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "clearThumbnailImage()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "clearThumbnailImage() - Invalidate thumbnail button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 217
    iput-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 218
    return-void
.end method

.method private createThumbnailImage()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    if-nez v0, :cond_0

    .line 228
    const/16 v0, 0x32

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const-string v2, "Thumbnail Controller"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController;

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    .line 231
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    invoke-virtual {v0, p0}, Lcom/htc/camera/component/ThumbnailController;->link(Lcom/htc/camera/component/ThumbnailUI;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 255
    :goto_1
    return-void

    .line 240
    :cond_1
    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - Sleep has been interrupted"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "No thumbnail controller to create thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onThumbnailButtonClicked()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 467
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 469
    :cond_1
    sget-object v2, Lcom/htc/camera/component/ThumbnailUI$19;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 476
    sget-object v2, Lcom/htc/camera/component/ThumbnailUI$19;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 485
    new-instance v2, Lcom/htc/camera/ui/ThumbnailImageEventArgs;

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v0}, Lcom/htc/camera/ui/ThumbnailImageEventArgs;-><init>(Lcom/htc/camera/media/MediaInfo;)V

    .line 486
    sget-object v0, Lcom/htc/camera/component/ThumbnailUI;->EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/ThumbnailUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 487
    invoke-virtual {v2}, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailButtonClicked() - Click event has been handled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 496
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnabled:Z

    if-eqz v0, :cond_5

    .line 497
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z

    if-eqz v0, :cond_4

    .line 498
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "m_IsEnableAfterLaunch false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    .line 504
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "m_IsEnabled false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsPhotoMode:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_6

    .line 509
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 510
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ToastManager:Lcom/htc/camera/ak;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 517
    :cond_7
    const-class v0, Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/ActionScreen;

    .line 518
    instance-of v1, v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 520
    check-cast v1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$8;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/component/ThumbnailUI$8;-><init>(Lcom/htc/camera/component/ThumbnailUI;Lcom/htc/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 476
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated(\'"

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\', "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 543
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v6

    .line 544
    :goto_1
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-eqz p2, :cond_1

    .line 548
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    :cond_1
    iput-boolean v7, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    .line 620
    :goto_2
    return-void

    .line 540
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v7

    .line 543
    goto :goto_1

    .line 554
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->clearThumbnailImage()V

    .line 557
    iput-object p2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 566
    if-eqz p1, :cond_b

    .line 568
    instance-of v0, p1, Lcom/htc/camera/as;

    if-eqz v0, :cond_8

    .line 569
    new-instance v0, Lcom/htc/camera/as;

    invoke-direct {v0}, Lcom/htc/camera/as;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 577
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/camera/media/MediaInfo;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 582
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-nez v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iput-object v3, v0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 586
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_6

    .line 588
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v3, "onThumbnailImageCreated() - Invalidate thumbnail button"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

    if-eq v0, v3, :cond_6

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v3, "onThumbnailImageCreated() - Unexpected thumbnail button background found"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThumbnailImageCreated() - Current background : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThumbnailImageCreated() - Expected background : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_6
    sget-object v3, Lcom/htc/camera/component/ThumbnailUI$19;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v6, v7

    .line 614
    :pswitch_0
    if-nez v6, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 615
    invoke-direct {p0, v6}, Lcom/htc/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V

    .line 618
    :cond_7
    iput-boolean v7, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    .line 619
    sget-object v0, Lcom/htc/camera/component/ThumbnailUI;->PROPERTY_LAST_MEDIA_INFO:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v1}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 570
    :cond_8
    instance-of v0, p1, Lcom/htc/camera/aq;

    if-eqz v0, :cond_9

    .line 571
    new-instance v0, Lcom/htc/camera/aq;

    invoke-direct {v0}, Lcom/htc/camera/aq;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    goto/16 :goto_3

    .line 572
    :cond_9
    instance-of v0, p1, Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v0, :cond_a

    .line 573
    new-instance v0, Lcom/htc/camera/media/ImageMediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/ImageMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    goto/16 :goto_3

    .line 575
    :cond_a
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    goto/16 :goto_3

    .line 580
    :cond_b
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    goto/16 :goto_4

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 640
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$9;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 650
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$10;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 660
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->restartingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$11;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 682
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 694
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$12;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 714
    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$13;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    .line 721
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 722
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 725
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$14;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 743
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$15;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 779
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$16;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 794
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$17;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ThumbnailUI$17;-><init>(Lcom/htc/camera/component/ThumbnailUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$18;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 816
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 817
    return-void
.end method

.method private showThumbnailButton(ZZ)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 825
    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->removeMessages(I)V

    .line 828
    if-eqz p1, :cond_4

    .line 830
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 831
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 852
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_3

    .line 854
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    .line 856
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 857
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private startAlbum()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 872
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    const/4 v0, 0x0

    .line 898
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    instance-of v2, v2, Lcom/htc/camera/as;

    if-eqz v2, :cond_2

    .line 878
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v3, "Start album by due to Zoe file"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 880
    const-string v3, "quick_view_type"

    const-string v4, "zoe"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v3, "quick_view_orientation"

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget v4, v4, Lcom/htc/camera/media/MediaInfo;->orientation:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v3, v2, v4}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    instance-of v2, v2, Lcom/htc/camera/aq;

    if-eqz v2, :cond_3

    .line 889
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v3, "Start album with Panorama+ file"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 891
    const-string v3, "is_panorama_plus"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v3, v2, v4}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->startAlbum(Lcom/htc/camera/media/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method private startThumbnailUpdateAnimation(Z)V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 916
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 917
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 918
    iget v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 919
    iget v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 920
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 921
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 923
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 924
    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->clearThumbnailImage()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;

    .line 265
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 266
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 333
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iput-boolean v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnabled:Z

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsPhotoMode:Z

    .line 292
    sget-object v0, Lcom/htc/camera/component/ThumbnailUI;->PROPERTY_IS_BUTTON_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :pswitch_1
    iput-boolean v3, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnabled:Z

    .line 297
    sget-object v0, Lcom/htc/camera/component/ThumbnailUI;->PROPERTY_IS_BUTTON_ENABLED:Lcom/htc/camera/base/PropertyKey;

    iget-boolean v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 298
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    if-eqz v0, :cond_0

    .line 300
    iput-boolean v2, p0, Lcom/htc/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    .line 301
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 313
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ThumbnailUI;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 323
    :cond_1
    aget-object v1, v0, v2

    check-cast v1, Lcom/htc/camera/media/MediaInfo;

    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ThumbnailUI;->onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 328
    :pswitch_4
    iput-boolean v3, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z

    .line 329
    sget-object v0, Lcom/htc/camera/component/ThumbnailUI;->PROPERTY_IS_BUTTON_ENABLED:Lcom/htc/camera/base/PropertyKey;

    iget-boolean v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_IsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 345
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 348
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 351
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f0e0207

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    .line 352
    new-instance v0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;-><init>(Lcom/htc/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Background of thumbnail button is prepared"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$3;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    .line 368
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a034b

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    .line 371
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->registerListeners()V

    .line 373
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ThumbnailUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ThumbnailUI$4;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 382
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$5;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 391
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$6;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V

    .line 413
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    goto :goto_0
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 433
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 440
    instance-of v0, p1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 442
    check-cast p1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 443
    iget-object v0, p1, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ThumbnailUI$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailUI$7;-><init>(Lcom/htc/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 456
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 629
    return-void
.end method
