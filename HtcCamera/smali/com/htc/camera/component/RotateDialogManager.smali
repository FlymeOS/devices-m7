.class final Lcom/htc/camera/component/RotateDialogManager;
.super Lcom/htc/camera/IRotateDialogManager;
.source "RotateDialogManager.java"


# instance fields
.field private final mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private m_CurrentDialogHandle:Lcom/htc/camera/Handle;

.field private m_Dialog:Landroid/app/Dialog;

.field private m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

.field private m_DialogDismissListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_DialogView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 146
    const-string v0, "Rotate Dialog Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/IRotateDialogManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogDismissListener:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/htc/camera/component/RotateDialogManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/RotateDialogManager$1;-><init>(Lcom/htc/camera/component/RotateDialogManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/RotateDialogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/RotateDialogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/component/RotateDialogManager$DialogContainer;)Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/RotateDialogManager;->showDialog(Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/RotateDialogManager;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/component/RotateDialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/camera/component/RotateDialogManager;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/RotateDialogManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogDismissListener:Ljava/util/List;

    return-object v0
.end method

.method private rotateDialog(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {v0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    iget v1, p1, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    const/16 v2, 0x190

    new-instance v3, Lcom/htc/camera/component/RotateDialogManager$3;

    invoke-direct {v3, p0, p1}, Lcom/htc/camera/component/RotateDialogManager$3;-><init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/rotate/UIRotation;)V

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/a;->a(Landroid/view/View;IILcom/htc/camera/b;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private showDialog(Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "showDialog() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "showDialog() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 278
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 281
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 283
    :try_start_0
    sget v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_TRANSIENT_STATUS_BAR:I

    invoke-static {v0, v1}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 284
    sget v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_IMMERSIVE_CONFIRMATION:I

    invoke-static {v0, v1}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 285
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 295
    new-instance v0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    .line 296
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    .line 299
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "showDialog(), child is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 288
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "Custom window flag not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 307
    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    iget-object v3, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    sget-object v2, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 311
    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v1, Lcom/htc/camera/component/RotateDialogManager$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/RotateDialogManager$5;-><init>(Lcom/htc/camera/component/RotateDialogManager;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 332
    if-eqz p4, :cond_2

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 335
    :cond_2
    new-instance v0, Lcom/htc/camera/component/RotateDialogManager$6;

    invoke-direct {v0, p0, p3}, Lcom/htc/camera/component/RotateDialogManager$6;-><init>(Lcom/htc/camera/component/RotateDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 357
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 358
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogDismissListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iput-object p2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    .line 362
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    .line 365
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogDismissListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 184
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 185
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 184
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    .line 191
    invoke-super {p0}, Lcom/htc/camera/IRotateDialogManager;->deinitializeOverride()V

    .line 192
    return-void
.end method

.method public hideDialog(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    if-nez p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/htc/camera/component/RotateDialogManager$7;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/RotateDialogManager$7;-><init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RotateDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 410
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    .line 411
    iput-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    .line 412
    iput-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    .line 413
    iput-object v2, p0, Lcom/htc/camera/component/RotateDialogManager;->m_DialogView:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/htc/camera/IRotateDialogManager;->initializeOverride()V

    .line 159
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/RotateDialogManager$2;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/RotateDialogManager$2;-><init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p2}, Lcom/htc/camera/component/RotateDialogManager;->rotateDialog(Lcom/htc/camera/rotate/UIRotation;)V

    .line 201
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;
    .locals 9

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "showDialog(), dialog is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    .line 243
    :cond_0
    new-instance v1, Lcom/htc/camera/SessionHandle;

    const-string v0, "RotateDialog"

    invoke-direct {v1, v0}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v2, "showDialog() - Create handle : "

    invoke-static {v0, v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/RotateDialogManager;->showDialog(Lcom/htc/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;

    const-string v2, "showDialog() - Called from another thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v2, Lcom/htc/camera/component/RotateDialogManager$4;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/htc/camera/component/RotateDialogManager$4;-><init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/SessionHandle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)V

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/RotateDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
