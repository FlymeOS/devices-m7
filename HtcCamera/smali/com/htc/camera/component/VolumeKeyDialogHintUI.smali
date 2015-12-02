.class public Lcom/htc/camera/component/VolumeKeyDialogHintUI;
.super Lcom/htc/camera/component/cm;
.source "VolumeKeyDialogHintUI.java"


# instance fields
.field private m_Adapter:Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

.field private m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

.field private m_DialogHandle:Lcom/htc/camera/Handle;

.field private m_DialogView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 235
    const-string v0, "DialogHintUI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_Adapter:Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/VolumeKeyDialogHintUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 260
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/VolumeKeyDialogHintUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$1;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 281
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$2;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 298
    return-void
.end method


# virtual methods
.method public DialogHintPopUp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 311
    invoke-virtual {p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 313
    const v0, 0x7f08024b

    .line 314
    const v2, 0x7f0c0054

    .line 316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    .line 320
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 323
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 324
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;Lcom/htc/camera/HTCCamera;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_Adapter:Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_Adapter:Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    new-instance v2, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 361
    const v0, 0x7f09004c

    sget-object v2, Lcom/htc/camera/R$styleable;->HtcListView:[I

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->TAG:Ljava/lang/String;

    const-string v2, "DialogHint popup"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v2, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V

    .line 379
    new-instance v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$5;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V

    .line 388
    iget-object v3, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    if-nez v3, :cond_1

    .line 389
    new-instance v3, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08024c

    invoke-virtual {v3, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 396
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 397
    if-eqz v0, :cond_2

    .line 398
    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    invoke-virtual {v0, v1, v2, v5}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    .line 402
    :goto_1
    return-void

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public DialogHinthide()V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 303
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 247
    invoke-direct {p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->setupPropertyChangedCallbacks()V

    .line 248
    return-void
.end method
