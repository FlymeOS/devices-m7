.class public Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "PhotoBoothMainBarItem.java"


# static fields
.field private static TRANSITIONROTATION_DURATION:I

.field private static mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;


# instance fields
.field private m_AllSceneMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private final m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

.field private final m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation
.end field

.field private m_Rotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x64

    sput v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TRANSITIONROTATION_DURATION:I

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-direct {p0, p1, v4}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 50
    new-instance v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;

    .line 124
    const v0, 0x7f080426

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 128
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 131
    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 132
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 138
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sput-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 145
    :goto_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 147
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 148
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 150
    invoke-direct {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V

    .line 151
    invoke-direct {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->setupCallBacks()V

    .line 152
    return-void

    .line 142
    :cond_1
    sget-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sput-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItemPattern()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/property/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/photopattern/PhotoBoothPattern;)Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    return-object p0
.end method

.method public static getCurrentPatternDrawable(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private setupCallBacks()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 253
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "m_CaptureModeManager == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAvailablePatterns()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 324
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailablePatterns() - update items visibility"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/htc/camera/photopattern/IPhotoBoothController;->getSupportedPattern()Ljava/util/ArrayList;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 340
    new-instance v2, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;

    iget-object v3, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v3, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/photopattern/PhotoBoothPattern;)V

    .line 342
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    move-object v1, v0

    .line 349
    check-cast v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->access$200(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;)Lcom/htc/camera/photopattern/PhotoBoothPattern;

    move-result-object v1

    .line 350
    iget-object v3, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/camera/menu/IconMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-virtual {v0, v4}, Lcom/htc/camera/menu/IconMenuItem;->setVisibility(Z)V

    .line 352
    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0, v4}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    goto :goto_1

    .line 355
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    goto :goto_1

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailablePatterns() - No Photo pattern controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_3
    return-void
.end method

.method private updateItem()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateItem"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateItem() - Update Pattern icon: "

    sget-object v2, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->setVisibility(Z)V

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->refreshItemHighlight()V

    .line 314
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->invalidate()V

    .line 315
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->setVisibility(Z)V

    goto :goto_0
.end method

.method private updateItemPattern()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 288
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateItemPattern()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    sget-object v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getIconDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 295
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 297
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sget-object v4, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_0
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->mphotoBoothPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemClicked()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - Click"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateAvailablePatterns()V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - No items"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 5

    .prologue
    .line 180
    check-cast p3, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;
    invoke-static {p3}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->access$200(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;)Lcom/htc/camera/photopattern/PhotoBoothPattern;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v3, "onMenuItemClicked() - Scene: "

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->invalidate()V

    .line 192
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v4, v4, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->setPhotoBoothPattern(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 264
    iput-object p2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 265
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIRotationChanged -startTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_Icon1stRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    sget v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TRANSITIONROTATION_DURATION:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onUIRotationChanged   resetTransition"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_TransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method
