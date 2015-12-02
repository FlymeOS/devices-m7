.class public Lcom/htc/camera/mainbar/SelfTimerMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "SelfTimerMainBarItem.java"


# instance fields
.field private m_AllTimerMenuItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_AllTimerMenuItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Item10Sec:Lcom/htc/camera/menu/IconMenuItem;

.field private m_Item2Sec:Lcom/htc/camera/menu/IconMenuItem;

.field private m_Item5Sec:Lcom/htc/camera/menu/IconMenuItem;

.field private m_ItemOff:Lcom/htc/camera/menu/IconMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    .line 84
    const v0, 0x7f080429

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setTitle(I)V

    .line 86
    new-instance v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->updateItem()V

    .line 89
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setupCallBacks()V

    .line 92
    new-instance v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0801a4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_ItemOff:Lcom/htc/camera/menu/IconMenuItem;

    .line 97
    new-instance v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0801a5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item2Sec:Lcom/htc/camera/menu/IconMenuItem;

    .line 102
    new-instance v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0801a7

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item5Sec:Lcom/htc/camera/menu/IconMenuItem;

    .line 107
    new-instance v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0801a8

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item10Sec:Lcom/htc/camera/menu/IconMenuItem;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_ItemOff:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item2Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item5Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item10Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_ItemOff:Lcom/htc/camera/menu/IconMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item2Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item5Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item10Sec:Lcom/htc/camera/menu/IconMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v1, v0

    .line 123
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->setSelfTimer(I)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->updateItem()V

    return-void
.end method

.method private setupCallBacks()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->expandableMenuUI:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 197
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find ICaptureModeManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 220
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 239
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 249
    return-void
.end method

.method private updateItem()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, v3}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setEnabled(Z)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 261
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_3

    .line 263
    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_1

    .line 264
    invoke-virtual {p0, v3}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setVisibility(Z)V

    .line 274
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->invalidate()V

    .line 275
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setEnabled(Z)V

    goto :goto_0

    .line 265
    :cond_1
    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_2

    .line 266
    invoke-virtual {p0, v4}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setVisibility(Z)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateItem() - unsupported camera type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->setVisibility(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v4

    .line 130
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 132
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v1, v1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string v1, "pref_camera_self_timer_main"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    move-wide v2, v1

    .line 144
    :goto_0
    if-eqz v4, :cond_2

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    .line 147
    :goto_1
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 140
    :cond_0
    if-eqz v4, :cond_1

    const-string v1, "pref_camera_self_timer_main"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    :goto_3
    move-wide v2, v1

    goto :goto_0

    :cond_1
    const-string v1, "pref_camera_self_timer_front"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    goto :goto_3

    .line 144
    :cond_2
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    goto :goto_1

    .line 147
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onItemClicked()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 155
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v1, v0

    .line 159
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItems:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 160
    if-eqz v0, :cond_1

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 163
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->setSelfTimer(I)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_AllTimerMenuItemsList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 169
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelfTimerMainBarItem() - Not support timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 174
    .line 175
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_ItemOff:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p3, v1, :cond_0

    move v1, v0

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    const-string v2, "onMenuItemClicked() - Set duration: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->setSelfTimer(I)V

    .line 190
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item2Sec:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p3, v1, :cond_1

    .line 178
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item5Sec:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p3, v1, :cond_2

    .line 180
    const/4 v0, 0x5

    move v1, v0

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->m_Item10Sec:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p3, v1, :cond_3

    .line 182
    const/16 v0, 0xa

    move v1, v0

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuItemClicked() - Invalid item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method
