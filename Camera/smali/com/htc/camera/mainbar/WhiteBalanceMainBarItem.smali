.class public Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "WhiteBalanceMainBarItem.java"


# instance fields
.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_FrontWBDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ImageSettings:Lcom/htc/camera/ImageSettings;

.field private m_MainWBDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_WbDisplayValues:[Ljava/lang/String;

.field private m_WbValues:[Ljava/lang/String;

.field private m_iconMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 134
    const v0, 0x7f08042c

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->setTitle(I)V

    .line 136
    new-instance v0, Lcom/htc/camera/ImageSettings;

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    .line 137
    new-instance v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbValues:[Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbDisplayValues:[Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;->setWhiteBalance(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->updateContent()V

    .line 150
    invoke-direct {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->setupCallBacks()V

    .line 151
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->updateEnableState()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->refreshIcons()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->onResettingToDefault()V

    return-void
.end method

.method private onResettingToDefault()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    return-void
.end method

.method private onWhiteBalenceSelected(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    .line 202
    if-eqz v1, :cond_1

    .line 203
    iget-object v2, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 212
    :cond_0
    if-eqz v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_white_balance"

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 217
    :goto_1
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_white_balance_2nd"

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private refreshIcons()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    .line 222
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshIcons() - newValue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;

    invoke-virtual {v0, v2}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalanceIconDrawable;->setWhiteBalance(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->invalidate()V

    .line 228
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_1

    .line 231
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 230
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method

.method private setupCallBacks()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 245
    new-instance v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V

    .line 254
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 256
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 265
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 268
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 269
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 272
    :cond_0
    new-instance v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$3;

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "Settings.FrontWhiteBalance"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_FrontWBDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 283
    new-instance v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "Settings.MainWhiteBalance"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_MainWBDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 294
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 304
    return-void
.end method

.method private updateEnableState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 364
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    :goto_0
    move-object v3, v1

    .line 375
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    move v1, v0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    :goto_3
    or-int/2addr v0, v1

    .line 378
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->setEnabled(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->refreshItemHighlight()V

    .line 380
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v0, v1

    .line 371
    goto :goto_1

    :cond_2
    move v1, v2

    .line 375
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    .line 378
    goto :goto_4
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v2

    .line 157
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_white_balance"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 159
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_white_balance_2nd"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method protected onItemClicked()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->updateContent()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p3}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->onWhiteBalenceSelected(Lcom/htc/camera/menu/IconMenuItem;)V

    .line 185
    return-void
.end method

.method public updateContent()V
    .locals 8

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateContent() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContent() - m_iconMenuItems = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->refreshItemHighlight()V

    .line 317
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbValues:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbValues:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 326
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 327
    if-nez v2, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateContent() - No camera controller, skip update process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_1
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 332
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 335
    invoke-virtual {v2, v3}, Lcom/htc/camera/CameraController;->isWhiteBalanceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    new-instance v4, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;

    iget-object v5, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v4, p0, v5}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;-><init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Landroid/content/res/Resources;)V

    .line 337
    invoke-virtual {v4, v3}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->setWhiteBalance(Ljava/lang/String;)V

    .line 338
    new-instance v5, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v6, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v7, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_WbDisplayValues:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v5, v6, v4, v7}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v5, v3}, Lcom/htc/camera/menu/IconMenuItem;->setTag(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v5}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 345
    :cond_2
    iget-object v3, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    :cond_3
    iget-object v4, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContent() - value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not supported in current camera type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateContent() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
