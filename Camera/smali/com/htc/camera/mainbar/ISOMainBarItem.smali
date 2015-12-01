.class public Lcom/htc/camera/mainbar/ISOMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "ISOMainBarItem.java"


# static fields
.field private static m_FrontIsoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainIsoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_FrontISODynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
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

.field private m_MainISODynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_MainIsoValues:Ljava/util/List;

    .line 189
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_FrontIsoValues:Ljava/util/List;

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 198
    const v0, 0x7f08042a

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setTitle(I)V

    .line 200
    new-instance v0, Lcom/htc/camera/ImageSettings;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    .line 201
    new-instance v0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    .line 206
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->setISO(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem;->updateItem(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->updateContent()V

    .line 214
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setupCallBacks()V

    .line 215
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/ISOMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/ISOMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/ISOMainBarItem;Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/ISOMainBarItem;->updateItem(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/mainbar/ISOMainBarItem;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->updateEnableState()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/mainbar/ISOMainBarItem;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->refreshIcons()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/mainbar/ISOMainBarItem;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->onResettingToDefault()V

    return-void
.end method

.method private onIsoSelected(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    .line 243
    if-eqz v1, :cond_1

    .line 244
    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 267
    :cond_0
    if-eqz v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso"

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_4

    .line 277
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 276
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso_2nd"

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 279
    :cond_4
    return-void
.end method

.method private onResettingToDefault()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    :cond_0
    return-void
.end method

.method private refreshIcons()V
    .locals 5

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    .line 315
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshIcons() - newValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isMainCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;

    invoke-virtual {v0, v2}, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->setISO(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->invalidate()V

    .line 321
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_1

    .line 324
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 323
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method private setupCallBacks()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 337
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ISOMainBarItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ISOMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 348
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ISOMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ISOMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 360
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Lcom/htc/camera/mainbar/ISOMainBarItem$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/ISOMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    .line 370
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 371
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 372
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 375
    :cond_0
    new-instance v0, Lcom/htc/camera/mainbar/ISOMainBarItem$4;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "Settings.FrontIso"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/mainbar/ISOMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_FrontISODynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 384
    new-instance v0, Lcom/htc/camera/mainbar/ISOMainBarItem$5;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "Settings.MainIso"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/mainbar/ISOMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_MainISODynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 393
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ISOMainBarItem$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ISOMainBarItem$6;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 402
    return-void
.end method

.method private updateEnableState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 466
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    :goto_0
    move-object v3, v1

    .line 477
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

    .line 480
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setEnabled(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->refreshItemHighlight()V

    .line 482
    return-void

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v0, v1

    .line 473
    goto :goto_1

    :cond_2
    move v1, v2

    .line 477
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    .line 480
    goto :goto_4
.end method

.method private updateItem(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 489
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne p1, v0, :cond_2

    .line 491
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne p2, v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setVisibility(Z)V

    .line 502
    :goto_0
    return-void

    .line 493
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne p2, v0, :cond_1

    .line 494
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setVisibility(Z)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchExpandedMenuMode() - unsupported camera type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/camera/CameraType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem;->setVisibility(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v2

    .line 221
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 223
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso_2nd"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method protected onItemClicked()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->updateContent()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 292
    return-void
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p3}, Lcom/htc/camera/mainbar/ISOMainBarItem;->onIsoSelected(Lcom/htc/camera/menu/IconMenuItem;)V

    .line 301
    return-void
.end method

.method public updateContent()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 408
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    .line 413
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 417
    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_MainIsoValues:Ljava/util/List;

    move-object v3, v0

    .line 419
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 422
    new-instance v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v5, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_Res:Landroid/content/res/Resources;

    const v6, 0x7f020072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_Res:Landroid/content/res/Resources;

    const v7, 0x7f0801a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setTag(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 432
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 434
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    const-string v5, "ISO100"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 417
    :cond_2
    sget-object v0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_FrontIsoValues:Ljava/util/List;

    move-object v3, v0

    goto :goto_1

    .line 438
    :cond_3
    new-instance v5, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;

    iget-object v6, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v5, p0, v6}, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;-><init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Landroid/content/res/Resources;)V

    .line 439
    invoke-virtual {v5, v0}, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->setISO(Ljava/lang/String;)V

    .line 440
    new-instance v6, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v7, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v6, v0}, Lcom/htc/camera/menu/IconMenuItem;->setTag(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {v6}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v6, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->refreshItemHighlight()V

    .line 454
    return-void
.end method
