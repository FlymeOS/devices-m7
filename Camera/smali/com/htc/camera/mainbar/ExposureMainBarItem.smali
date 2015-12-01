.class public Lcom/htc/camera/mainbar/ExposureMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "ExposureMainBarItem.java"


# instance fields
.field private brightnessListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private final m_ExposureLevel:I

.field private final m_ExposureNormalizeMax:F

.field private final m_ExposureNormalizeMin:F

.field private m_ExposureValue:[F

.field private final m_ImageSettings:Lcom/htc/camera/ImageSettings;

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
    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureNormalizeMax:F

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureNormalizeMin:F

    .line 93
    const v0, 0x7f08042b

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->setTitle(I)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureLevel:I

    .line 96
    new-instance v0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;-><init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/htc/camera/ImageSettings;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    .line 99
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 104
    invoke-direct {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapSettingsExposureToIcon(F)F

    move-result v1

    .line 105
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->setExposure(F)V

    .line 106
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->updateContent()V

    .line 107
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->setupCallBacks()V

    .line 108
    return-void

    .line 35
    :array_0
    .array-data 4
        -0x40000000    # -2.0f
        -0x40400000    # -1.5f
        -0x40800000    # -1.0f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/mainbar/ExposureMainBarItem;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->updateEnableState()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/mainbar/ExposureMainBarItem;F)F
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapSettingsExposureToIcon(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    return-object v0
.end method

.method private mapIconExposureToSettings(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 186
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 187
    iget v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureLevel:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 189
    const/high16 v2, -0x40800000    # -1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private mapSettingsExposureToIcon(F)F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 161
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    .line 169
    :cond_0
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 170
    iget v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureLevel:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 171
    sub-float v1, p1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 172
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    aget v0, v1, v0

    return v0

    .line 165
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    .line 167
    goto :goto_0
.end method

.method private setupCallBacks()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 122
    new-instance v0, Lcom/htc/camera/mainbar/ExposureMainBarItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;)V

    .line 131
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 134
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 135
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 140
    new-instance v0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "Settings.Brightness"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->brightnessListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 155
    return-void
.end method

.method private updateEnableState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 262
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    :goto_0
    move-object v3, v1

    .line 273
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

    .line 276
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->setEnabled(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->refreshItemHighlight()V

    .line 278
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v0, v1

    .line 269
    goto :goto_1

    :cond_2
    move v1, v2

    .line 273
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    .line 276
    goto :goto_4
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_brightness"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 114
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 115
    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemClicked()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->updateContent()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 200
    return-void
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p3}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapIconExposureToSettings(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 206
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 207
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public updateContent()V
    .locals 8

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateContent() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 223
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 226
    new-instance v4, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v4, p0, v2}, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;-><init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;Landroid/content/res/Resources;)V

    .line 227
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v2}, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->setExposure(F)V

    .line 230
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    const-string v2, ""

    .line 231
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 233
    const-string v2, "+"

    .line 235
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v5, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v6, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v5, v6, v4, v2}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v5, v3}, Lcom/htc/camera/menu/IconMenuItem;->setTag(Ljava/lang/Object;)V

    .line 240
    invoke-direct {p0, v3}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapIconExposureToSettings(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 241
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->refreshItemHighlight()V

    .line 249
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateContent() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method
