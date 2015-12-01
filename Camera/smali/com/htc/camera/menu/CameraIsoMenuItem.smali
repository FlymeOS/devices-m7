.class public Lcom/htc/camera/menu/CameraIsoMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "CameraIsoMenuItem.java"


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

.field private final m_ImageSettings:Lcom/htc/camera/ImageSettings;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_MainIsoValues:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_FrontIsoValues:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/CameraIsoMenuItem;Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/CameraIsoMenuItem;->onIsoSelected(Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;)V

    return-void
.end method

.method public static isIsoAvailable(Lcom/htc/camera/CameraType;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_MainIsoValues:Ljava/util/List;

    .line 186
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_1
    return v0

    .line 185
    :cond_0
    sget-object v1, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_FrontIsoValues:Ljava/util/List;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onIsoSelected(Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/menu/CameraIsoMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 88
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    iget-object v4, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    iput-object v4, v1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v4, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v1, v4}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/IImageSettingsController;

    .line 95
    if-eqz v1, :cond_0

    .line 96
    iget-object v4, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {v1, v4, v2}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 98
    :cond_0
    iget-object v1, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    const-string v4, "auto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    const-class v4, Lcom/htc/camera/effect/AutoScene;

    invoke-virtual {v1, v4}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 106
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v4, Lcom/htc/camera/ak;

    invoke-virtual {v1, v4}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ak;

    .line 107
    if-eqz v1, :cond_3

    .line 108
    const v4, 0x7f08019c

    invoke-virtual {v1, v4}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 116
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    .line 117
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso"

    iget-object v3, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_6

    .line 126
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 125
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    iget-object v4, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    iput-object v4, v1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    :cond_3
    const-string v1, "CameraIsoMenuItem"

    const-string v4, "onIsoSelected() - No IToastManager interface"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_4
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_iso_2nd"

    iget-object v3, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 128
    :cond_6
    iget-object v0, p1, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/CameraIsoMenuItem;->setSummary(Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 137
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    invoke-virtual {p0}, Lcom/htc/camera/menu/CameraIsoMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 141
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v3

    .line 142
    const-string v2, ""

    .line 143
    if-eqz v3, :cond_0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    sget-object v5, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    .line 147
    :goto_0
    if-eqz v3, :cond_1

    sget-object v1, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_MainIsoValues:Ljava/util/List;

    move-object v6, v1

    .line 149
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 152
    new-instance v3, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0801a2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v0, v1, v5}, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/CameraIsoMenuItem;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, v3, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    invoke-virtual {v3, v4}, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->setChecked(Z)V

    .line 156
    iget-object v1, v3, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoDescription:Ljava/lang/String;

    .line 158
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v5, v1

    .line 161
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 163
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    new-instance v8, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, p0, v0, v2, v1}, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/CameraIsoMenuItem;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, v8, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoValue:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    invoke-virtual {v8, v4}, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->setChecked(Z)V

    .line 169
    iget-object v2, v8, Lcom/htc/camera/menu/CameraIsoMenuItem$SubMenuItem;->isoDescription:Ljava/lang/String;

    .line 171
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v5, v2

    goto :goto_3

    .line 143
    :cond_0
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    sget-object v5, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    goto :goto_0

    .line 147
    :cond_1
    sget-object v1, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_FrontIsoValues:Ljava/util/List;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/menu/CameraIsoMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/CameraIsoMenuItem;->setItems(Ljava/util/List;)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/CameraIsoMenuItem;->setSummary(Ljava/lang/String;)V

    .line 179
    return-void

    :cond_4
    move-object v2, v5

    goto :goto_4

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method
