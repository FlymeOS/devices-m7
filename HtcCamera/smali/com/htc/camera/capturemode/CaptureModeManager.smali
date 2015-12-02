.class final Lcom/htc/camera/capturemode/CaptureModeManager;
.super Lcom/htc/camera/capturemode/ICaptureModeManager;
.source "CaptureModeManager.java"


# instance fields
.field private final m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

.field private m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

.field private m_SettingsManager:Lcom/htc/camera/ISettingsManager;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private final m_UserCaptureModes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/camera/capturemode/UserCaptureMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, "Capture Mode Manager"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 74
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$1;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    .line 86
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    .line 97
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->disableFakeUIRotation()V

    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->disableUIRotationChangeNotification()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode$State;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureModeManager;->onCaptureModeStateChanged(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->showCustomCameraSavedToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSelfieMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->createUserCaptureModeInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/capturemode/CaptureModeManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/CaptureModeManager;->createUserCaptureModeInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->resetToDefault()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/capturemode/CaptureModeManager;Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCommandCaptureMode(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/capturemode/CaptureModeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/capturemode/CaptureModeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changeToAvailableCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    if-eqz v0, :cond_1

    .line 109
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 112
    invoke-virtual {p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeToAvailableCaptureMode() - Change to capture mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_1
    return-object v1

    .line 109
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createUserCaptureModeInternal()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 245
    const v0, 0x7f080406

    invoke-virtual {v4, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v1

    .line 247
    :goto_0
    const v0, 0x7fffffff

    if-gt v3, v0, :cond_1

    .line 250
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 260
    :goto_1
    if-eqz v0, :cond_1

    .line 247
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htc/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v3, Lcom/htc/lib1/cc/widget/HtcEditText;

    invoke-direct {v3, v4}, Lcom/htc/lib1/cc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    new-instance v7, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    const v4, 0x7f0a0163

    invoke-virtual {p0, v4}, Lcom/htc/camera/capturemode/CaptureModeManager;->getDimension(I)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 271
    const v4, 0x7f0a0164

    invoke-virtual {p0, v4}, Lcom/htc/camera/capturemode/CaptureModeManager;->getDimension(I)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcEditText;->setSingleLine()V

    .line 274
    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0xf

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v4, v2

    invoke-virtual {v3, v4}, Lcom/htc/lib1/cc/widget/HtcEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 275
    invoke-virtual {v3, v6}, Lcom/htc/lib1/cc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v3, v5}, Lcom/htc/lib1/cc/widget/HtcEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 278
    const v2, 0x7f08040a

    invoke-virtual {v7, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 279
    invoke-virtual {v7, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 280
    const v0, 0x7f08040b

    new-instance v2, Lcom/htc/camera/capturemode/CaptureModeManager$6;

    invoke-direct {v2, p0, v3}, Lcom/htc/camera/capturemode/CaptureModeManager$6;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/lib1/cc/widget/HtcEditText;)V

    invoke-virtual {v7, v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 290
    const v0, 0x7f080413

    new-instance v2, Lcom/htc/camera/capturemode/CaptureModeManager$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$7;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    invoke-virtual {v7, v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 300
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 301
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v7}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v2

    new-instance v3, Lcom/htc/camera/capturemode/CaptureModeManager$8;

    invoke-direct {v3, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$8;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    .line 325
    :cond_2
    :goto_2
    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureModeInternal() - No IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_1
.end method

.method private createUserCaptureModeInternal(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "createUserCaptureModeInternal() - No capture mode name"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 336
    :cond_1
    const-string v0, "DLWARP:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v2, "AUTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    const-string v0, "DualCamAutoWarp"

    move-object v2, v0

    .line 351
    :goto_1
    if-eqz v2, :cond_8

    .line 353
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserCaptureModeInternal() - Set dual-lens warp operation to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-class v0, Lcom/htc/camera/duallens/c;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/duallens/c;

    .line 355
    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {v0, v2}, Lcom/htc/camera/duallens/c;->setDualLensServiceState(Ljava/lang/String;)Z

    move v0, v1

    .line 358
    goto :goto_0

    .line 343
    :cond_2
    const-string v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const-string v0, "DualCamNoWarp"

    move-object v2, v0

    goto :goto_1

    .line 345
    :cond_3
    const-string v2, "FORCE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    const-string v0, "DualCamForceWarp"

    move-object v2, v0

    goto :goto_1

    .line 348
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureModeInternal() - No IDualLensServiceManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->generateUserCaptureModeId()Ljava/lang/String;

    move-result-object v4

    .line 369
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureModeInternal() - Create user capture mode with name \'"

    const-string v3, "\' and ID \'"

    const-string v5, "\'"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    new-instance v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {v1, v2, v4, v0}, Lcom/htc/camera/capturemode/UserCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 371
    invoke-virtual {v1, p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->setDisplayName(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_7

    .line 374
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_7
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->saveUserCaptureModes()V

    .line 378
    iget-object v0, v1, Lcom/htc/camera/capturemode/UserCaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 381
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-direct {v2, v1}, Lcom/htc/camera/capturemode/CaptureModeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 383
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserCaptureModeInternal() - Undefined warp operation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private generateUserCaptureModeId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 480
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [C

    .line 481
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 483
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4042000000000000L    # 36.0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 484
    const/16 v3, 0x9

    if-gt v0, v3, :cond_1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_1
    aput-char v0, v2, v1

    .line 481
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 484
    :cond_1
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_1

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 487
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    return-object v0
.end method

.method private getCommandCaptureMode(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 4

    .prologue
    .line 497
    const/4 v2, 0x0

    .line 498
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 501
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 502
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_0

    .line 503
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 502
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 508
    :cond_0
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method private getDemoFlowCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 516
    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "demoflow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_0

    .line 519
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_UNKNOW:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 521
    :try_start_0
    invoke-static {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->valueOf(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDemoFlowCaptureMode() - demoFlow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 527
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 528
    sget-object v4, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 576
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - unknown demoflow mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v2

    .line 581
    :cond_1
    return-object v1

    .line 522
    :catch_0
    move-exception v1

    .line 523
    iget-object v3, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDemoFlowCaptureMode() - demoFlow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 530
    :pswitch_0
    add-int/lit8 v1, v3, -0x1

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_1
    if-ltz v2, :cond_1

    .line 531
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/camera/capturemode/c;

    if-eqz v3, :cond_2

    .line 532
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 530
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 537
    :pswitch_1
    add-int/lit8 v1, v3, -0x1

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_2
    if-ltz v2, :cond_1

    .line 538
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v3, :cond_3

    .line 539
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 537
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 544
    :pswitch_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v1, v2

    :goto_3
    if-ltz v3, :cond_1

    .line 545
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v2, :cond_4

    .line 546
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v2, v1

    .line 547
    check-cast v2, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v2, v4}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 544
    :cond_4
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_3

    .line 553
    :pswitch_3
    add-int/lit8 v1, v3, -0x1

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_4
    if-ltz v2, :cond_1

    .line 554
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-eqz v3, :cond_5

    .line 555
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 553
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 560
    :pswitch_4
    add-int/lit8 v1, v3, -0x1

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_5
    if-ltz v2, :cond_1

    .line 561
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/camera/capturemode/b;

    if-eqz v3, :cond_6

    .line 562
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 563
    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    .line 564
    if-eqz v3, :cond_7

    .line 565
    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_FACE_AUTO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 566
    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 567
    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_LIVE_BEAUTY_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 568
    iget-object v3, v3, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    invoke-virtual {v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 560
    :cond_6
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 570
    :cond_7
    iget-object v3, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v4, "initializeOverride() - DEMO_SELFIE settings null"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getMainCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 589
    const/4 v5, 0x0

    .line 593
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v4, v6

    move v2, v6

    :goto_0
    if-ltz v3, :cond_1

    .line 596
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 597
    instance-of v7, v1, Lcom/htc/camera/capturemode/c;

    if-eqz v7, :cond_0

    move v2, v3

    .line 599
    :cond_0
    instance-of v7, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v7, :cond_3

    check-cast v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/capturemode/c;

    if-eqz v1, :cond_3

    move v1, v3

    .line 594
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v1

    goto :goto_0

    .line 603
    :cond_1
    if-eq v2, v6, :cond_2

    .line 604
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 609
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v3, "getMainCaptureMode() - idxDefaultSelfie: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, " idxUserSelfie"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v2, v5, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    return-object v0

    :cond_2
    move-object v0, v5

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method private getSelfieMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 619
    const/4 v5, 0x0

    .line 623
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v4, v6

    move v2, v6

    :goto_0
    if-ltz v3, :cond_1

    .line 626
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 627
    instance-of v7, v1, Lcom/htc/camera/capturemode/b;

    if-eqz v7, :cond_0

    move v2, v3

    .line 629
    :cond_0
    instance-of v7, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v7, :cond_3

    check-cast v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/capturemode/b;

    if-eqz v1, :cond_3

    move v1, v3

    .line 624
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v1

    goto :goto_0

    .line 633
    :cond_1
    if-eq v2, v6, :cond_2

    .line 634
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 639
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v3, "getSelfieMode() - idxDefaultSelfie: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, " idxUserSelfie"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v2, v5, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    return-object v0

    :cond_2
    move-object v0, v5

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method private isMainCameraCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 1

    .prologue
    .line 838
    instance-of v0, p1, Lcom/htc/camera/capturemode/c;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/c;

    if-eqz v0, :cond_1

    .line 840
    :cond_0
    const/4 v0, 0x1

    .line 841
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelfieMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 1

    .prologue
    .line 849
    instance-of v0, p1, Lcom/htc/camera/capturemode/b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureModeStateChanged(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode$State;)V
    .locals 5

    .prologue
    .line 861
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 862
    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 865
    if-gez v1, :cond_2

    .line 867
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureModeStateChanged() - Unexpected capture mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_2
    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-ne p2, v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-ne p1, v2, :cond_3

    .line 874
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureModeStateChanged() - Default capture mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is releasing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureModeStateChanged() - Capture mode \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is releasing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 882
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 883
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->saveUserCaptureModes()V

    .line 886
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 889
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 891
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 892
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureModeStateChanged() - Change back to previous capture mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    .line 899
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/capturemode/CaptureModeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 891
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_1

    .line 895
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-ne v0, p1, :cond_5

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_2
.end method

.method private resetToDefault()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "resetToDefault() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    .line 916
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 917
    if-eqz v0, :cond_1

    .line 919
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 921
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 922
    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v1

    if-nez v1, :cond_0

    .line 924
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {v1}, Lcom/htc/camera/CameraSettings;->resetToDefault()V

    .line 919
    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "resetToDefault() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method private saveUserCaptureModes()V
    .locals 6

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 941
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    if-eqz v0, :cond_2

    .line 945
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    .line 947
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 948
    instance-of v5, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v5, :cond_1

    .line 950
    check-cast v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    .line 951
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 952
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    :cond_0
    invoke-virtual {v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "saveUserCaptureModes() - No capture mode list"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "user_capture_mode_list"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 963
    :goto_1
    return-void

    .line 962
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "user_capture_mode_list"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->remove(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private selectPhotoCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 4

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 972
    if-eqz v0, :cond_2

    .line 974
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 976
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 977
    instance-of v3, v1, Lcom/htc/camera/capturemode/d;

    if-eqz v3, :cond_1

    .line 993
    :cond_0
    :goto_1
    return-object v1

    .line 974
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "selectPhotoCaptureMode() - Cannot find main camera video capture mode, select first capture mode which supports photo mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_2
    if-ltz v3, :cond_3

    .line 986
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 987
    iget-object v2, v1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "selectPhotoCaptureMode() - Cannot find capture mode which supports photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private selectVideoCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 4

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1003
    if-eqz v0, :cond_2

    .line 1005
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 1007
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1008
    instance-of v3, v1, Lcom/htc/camera/capturemode/e;

    if-eqz v3, :cond_1

    .line 1024
    :cond_0
    :goto_1
    return-object v1

    .line 1005
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "selectVideoCaptureMode() - Cannot find main camera video capture mode, select first capture mode which supports video mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_2
    if-ltz v3, :cond_3

    .line 1017
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1018
    iget-object v2, v1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2

    .line 1023
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "selectVideoCaptureMode() - Cannot find capture mode which supports video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupCaptureModeList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 1175
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v7

    .line 1176
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v8

    .line 1177
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_4

    .line 1179
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_2

    .line 1181
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    .line 1182
    new-instance v0, Lcom/htc/camera/capturemode/c;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/c;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-nez v0, :cond_8

    .line 1205
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setupCaptureModeList() - No camera in this device self-finish"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 1273
    :cond_0
    return-void

    .line 1184
    :cond_1
    new-instance v0, Lcom/htc/camera/capturemode/d;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/d;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_0

    .line 1186
    :cond_2
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_3

    .line 1187
    new-instance v0, Lcom/htc/camera/capturemode/b;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "setupCaptureModeList() - No camera in this device"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :cond_4
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_7

    .line 1193
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_5

    .line 1194
    new-instance v0, Lcom/htc/camera/capturemode/e;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/e;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_0

    .line 1195
    :cond_5
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_6

    .line 1196
    new-instance v0, Lcom/htc/camera/capturemode/b;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_0

    .line 1198
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "setupCaptureModeList() - No camera in this device"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Neither photo nor video modes are supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1212
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_b

    .line 1216
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/c;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/d;

    if-nez v0, :cond_9

    .line 1218
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_13

    .line 1219
    new-instance v0, Lcom/htc/camera/capturemode/c;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/c;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    :cond_9
    :goto_1
    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v8, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/e;

    if-nez v0, :cond_a

    .line 1224
    new-instance v0, Lcom/htc/camera/capturemode/e;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/e;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_a
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableZoe()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1226
    new-instance v0, Lcom/htc/camera/zoe/ZoeCaptureMode;

    invoke-direct {v0, v7}, Lcom/htc/camera/zoe/ZoeCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_b
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-nez v0, :cond_c

    .line 1229
    new-instance v0, Lcom/htc/camera/capturemode/b;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_c
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v8, v0}, Lcom/htc/camera/CameraStartMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1232
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 1233
    :goto_2
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSplitCaptureModeSupported()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1234
    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {v2, v7}, Lcom/htc/camera/splitcapture/SplitCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableHumanJoint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1238
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-direct {v0, v7}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_e
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isPhotoBoothSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1241
    new-instance v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_f
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportPanoramaPlus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1243
    new-instance v0, Lcom/htc/camera/panorama/PanoramaCaptureMode;

    invoke-direct {v0, v7}, Lcom/htc/camera/panorama/PanoramaCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1247
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "user_capture_mode_list"

    invoke-virtual {v0, v2, v12}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_17

    .line 1250
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v6, v1

    .line 1251
    :goto_4
    array-length v0, v10

    if-ge v6, v0, :cond_17

    .line 1253
    aget-object v4, v10, v6

    .line 1254
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1256
    new-instance v11, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-direct {v11, v7, v4, v12}, Lcom/htc/camera/capturemode/UserCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 1257
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setupCaptureModeList() - Load user capture mode \'"

    invoke-virtual {v11}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\' with ID \'"

    const-string v5, "\'"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1258
    iget-object v0, v11, Lcom/htc/camera/capturemode/UserCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-boolean v1, v8, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v11, Lcom/htc/camera/capturemode/UserCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-boolean v1, v8, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1261
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_12
    :goto_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    .line 1221
    :cond_13
    new-instance v0, Lcom/htc/camera/capturemode/d;

    invoke-direct {v0, v7}, Lcom/htc/camera/capturemode/d;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 1232
    goto/16 :goto_2

    .line 1235
    :cond_15
    if-eqz v0, :cond_d

    .line 1236
    new-instance v2, Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-direct {v2, v7}, Lcom/htc/camera/dualcamera/DualCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1265
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setupCaptureModeList() - Photo/video mode supports are different, ignore this user capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1271
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_0

    .line 1272
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1271
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6
.end method

.method private showCustomCameraSavedToast()V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_0

    .line 1280
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_ToastManager:Lcom/htc/camera/ak;

    .line 1281
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureModeInternal() - No IToastManager component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_ToastManager:Lcom/htc/camera/ak;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0
.end method


# virtual methods
.method public createUserCaptureMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->threadAccessCheck()V

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureMode() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_2

    .line 152
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "Create capture mode dialog"

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 158
    if-nez v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureMode() - No capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/capturemode/CaptureMode;->canChangeDefaultSettings:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 165
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->createUserCaptureModeInternal()V

    goto :goto_0

    .line 170
    :cond_5
    new-instance v1, Lcom/htc/camera/Reference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/Reference;-><init>(Ljava/lang/Object;)V

    .line 171
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    const v3, 0x7f080408

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 173
    const v3, 0x7f080409

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 174
    const v3, 0x7f0800ed

    new-instance v4, Lcom/htc/camera/capturemode/CaptureModeManager$2;

    invoke-direct {v4, p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager$2;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 196
    const v0, 0x7f0800ee

    new-instance v3, Lcom/htc/camera/capturemode/CaptureModeManager$3;

    invoke-direct {v3, p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager$3;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Reference;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 206
    const v0, 0x7f080413

    new-instance v3, Lcom/htc/camera/capturemode/CaptureModeManager$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$4;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 214
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$5;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager$5;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Reference;)V

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 228
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 229
    if-eqz v0, :cond_6

    .line 230
    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v5, v2}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureMode() - No IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 237
    iput-object v5, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DialogRotationLockHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 397
    if-eqz v0, :cond_0

    .line 399
    iget-object v2, v0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v3, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 400
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->release()V

    goto :goto_0

    .line 406
    :cond_1
    invoke-super {p0}, Lcom/htc/camera/capturemode/ICaptureModeManager;->deinitializeOverride()V

    .line 407
    return-void
.end method

.method public deleteCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCaptureMode() - Null capture mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 470
    :goto_0
    return v0

    .line 421
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCaptureMode() - Only UserCaptureMode can be deleted"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 424
    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->threadAccessCheck()V

    move-object v0, p1

    .line 431
    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    .line 432
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_UserCaptureModes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCaptureMode() - Cannot find user capture mode \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' in list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 439
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->saveUserCaptureModes()V

    .line 442
    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_CaptureModeStateChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 445
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 448
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCaptureMode() - Current capture mode is deleted, change back to previous capture mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCaptureMode() - Fail to change back to previous capture mode, change to default capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCaptureMode() - Fail to change to default capture mode, change to first available capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->changeToAvailableCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    if-nez v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCaptureMode() - No available capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_4
    iput-object v4, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 465
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->deleteCustomSettings()V

    .line 466
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->release()V

    .line 469
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/capturemode/CaptureModeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 470
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_1

    .line 461
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-ne v0, p1, :cond_5

    .line 462
    iput-object v4, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    goto :goto_2
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 651
    invoke-super {p0}, Lcom/htc/camera/capturemode/ICaptureModeManager;->initializeOverride()V

    .line 654
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 657
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->setupCaptureModeList()V

    .line 660
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 661
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureModeManager$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$9;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 671
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureModeManager$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/CaptureModeManager$10;-><init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    invoke-virtual {v5, v0, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 712
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "capture_mode"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 714
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v6, :cond_f

    .line 716
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Initial capture mode name is \'"

    const-string v4, "\'"

    invoke-static {v0, v1, v6, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 718
    if-eqz v0, :cond_f

    .line 720
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_0
    if-ltz v4, :cond_f

    .line 722
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 723
    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 733
    :goto_1
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 734
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Start still image camera, select photo capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->selectPhotoCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    .line 744
    if-nez v1, :cond_3

    .line 746
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Use default capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 753
    :cond_3
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 755
    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Start video camera, select video capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->selectVideoCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    .line 763
    if-nez v1, :cond_7

    .line 765
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Use default capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 772
    :cond_7
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "initial-capture-mode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCommandCaptureMode(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 775
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "initial-capture-mode extra:"

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "initial-capture-mode"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "keycode"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 779
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_CAMERA_HWKEY_CONTROLTYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraHwKeyType;

    .line 780
    iget-object v4, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeOverride() - keycode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cameraHwKeyType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v4, 0x1b

    if-ne v2, v4, :cond_9

    if-eqz v0, :cond_9

    .line 783
    sget-object v2, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraHwKeyType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 794
    invoke-direct {p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->isSelfieMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 795
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSelfieMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    .line 798
    :goto_2
    if-eqz v0, :cond_9

    move-object v1, v0

    .line 803
    :cond_9
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getDemoFlowCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 808
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eq v1, v0, :cond_d

    .line 810
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - Initial capture mode is \'"

    const-string v3, "\'"

    invoke-static {v0, v2, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    invoke-virtual {p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    .line 832
    :cond_b
    :goto_3
    return-void

    .line 720
    :cond_c
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto/16 :goto_0

    .line 785
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->isMainCameraCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 786
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getMainCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    move-object v0, v3

    .line 790
    goto :goto_2

    .line 827
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_b

    .line 829
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Initial capture mode is \'"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    const-string v4, "\'"

    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 830
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/htc/camera/capturemode/CaptureMode;->enter(Lcom/htc/camera/capturemode/CaptureMode;I)Z

    goto :goto_3

    :cond_e
    move-object v0, v3

    goto :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1034
    if-nez p1, :cond_0

    .line 1036
    const-string v0, "captureMode"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    move v0, v2

    .line 1166
    :goto_0
    return v0

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->threadAccessCheck()V

    .line 1042
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1045
    goto :goto_0

    .line 1047
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 1048
    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1054
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureMode() - Taking picture state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v5, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1055
    goto :goto_0

    .line 1057
    :pswitch_0
    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1063
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureMode() - Recording state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v5, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1064
    goto :goto_0

    .line 1067
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode(\'"

    const-string v4, "\')"

    invoke-static {v0, v1, p1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Change to same capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 1073
    goto/16 :goto_0

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1076
    if-nez v0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No capture mode list"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1079
    goto/16 :goto_0

    .line 1081
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1083
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Unavailable capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1084
    goto/16 :goto_0

    .line 1086
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1088
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Capture mode is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1089
    goto/16 :goto_0

    .line 1093
    :cond_5
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    move v4, v3

    .line 1094
    :goto_1
    if-eqz v4, :cond_7

    .line 1095
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 1098
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1099
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeChangingEvent:Lcom/htc/camera/event/Event;

    new-instance v6, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-direct {v6, v0, p1, v3}, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;Z)V

    invoke-virtual {v1, p0, v6}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1102
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v6

    .line 1106
    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1107
    const/4 v1, 0x3

    .line 1108
    :goto_2
    if-eqz v0, :cond_8

    .line 1110
    iget-object v7, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCaptureMode() - Exit capture mode \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' with flags "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1, v1}, Lcom/htc/camera/capturemode/CaptureMode;->exit(Lcom/htc/camera/capturemode/CaptureMode;I)V

    .line 1115
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-eqz v1, :cond_9

    .line 1118
    if-eqz v6, :cond_b

    .line 1120
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

    .line 1121
    new-instance v7, Lcom/htc/camera/CloseableHandleReference;

    iget-object v8, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    invoke-interface {v8, v6, v3}, Lcom/htc/camera/ISettingsManager;->setSettings(Lcom/htc/camera/CameraSettings;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v7, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

    .line 1122
    invoke-virtual {v1, v3}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    .line 1129
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCaptureMode() - Enter capture mode \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p1, v0, v3}, Lcom/htc/camera/capturemode/CaptureMode;->enter(Lcom/htc/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1132
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v6, "setCaptureMode() - Fail to enter capture mode, re-enter previous capture mode"

    invoke-static {v1, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    if-nez v0, :cond_c

    .line 1135
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No previous capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No previous capture mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v4, v2

    .line 1093
    goto/16 :goto_1

    .line 1125
    :cond_b
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1, v3}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_SettingsHandleReference:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_3

    .line 1138
    :cond_c
    invoke-virtual {v0, v10, v2}, Lcom/htc/camera/capturemode/CaptureMode;->enter(Lcom/htc/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1140
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Fail to re-enter previous capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to re-enter previous capture mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_d
    if-eqz v4, :cond_e

    .line 1144
    invoke-virtual {v5, v10}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 1145
    :cond_e
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v4, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-direct {v4, v0, p1, v3, v2}, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;ZZ)V

    invoke-virtual {v1, p0, v4}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    move v0, v2

    .line 1146
    goto/16 :goto_0

    .line 1150
    :cond_f
    if-eqz v4, :cond_10

    .line 1152
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Restart preview"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v5, v10}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 1157
    :cond_10
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1158
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "capture_mode"

    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1159
    :cond_11
    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->m_PreviousCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 1160
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1163
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-direct {v2, v0, p1, v3}, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;Z)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    move v0, v3

    .line 1166
    goto/16 :goto_0

    :cond_12
    move v1, v3

    goto/16 :goto_2

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1057
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
