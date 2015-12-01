.class public Lcom/htc/camera/menu/PhotoSizeModeMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "PhotoSizeModeMenuItem.java"


# instance fields
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

.field private m_cameraType:Lcom/htc/camera/CameraType;

.field private m_regularPhotSizeModeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;ILcom/htc/camera/CameraType;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    .line 63
    iput-object p3, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_cameraType:Lcom/htc/camera/CameraType;

    .line 65
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_regularPhotSizeModeDescription:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_cameraType:Lcom/htc/camera/CameraType;

    invoke-static {v1}, Lcom/htc/camera/CameraConfigFileReader;->getPhotoResolutions(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 69
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 70
    iget-object v3, v0, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    sget-object v4, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    if-ne v3, v4, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/AspectRatio;->Ratio_5x4:Lcom/htc/camera/AspectRatio;

    if-ne v0, v3, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_regularPhotSizeModeDescription:Ljava/lang/String;

    .line 79
    :cond_0
    return-void

    .line 67
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->onPhotoSizeSelected(Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;)V

    return-void
.end method

.method private onPhotoSizeSelected(Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 88
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p1, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 93
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeModeDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->setSummary(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 10

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    invoke-virtual {p0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 110
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ICaptureResolutionManager;

    .line 112
    const-string v3, ""

    .line 113
    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/CameraSettings;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/PhotoSizeMode;

    .line 114
    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoSizeModes:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 116
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 118
    new-instance v4, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;

    sget-object v5, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08022a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v0, v5, v6}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;Ljava/lang/String;)V

    .line 119
    new-instance v5, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;

    sget-object v6, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    iget-object v7, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_regularPhotSizeModeDescription:Ljava/lang/String;

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;Ljava/lang/String;)V

    .line 120
    new-instance v6, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;

    sget-object v7, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08022c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v0, v7, v8}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;-><init>(Lcom/htc/camera/menu/PhotoSizeModeMenuItem;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;Ljava/lang/String;)V

    .line 122
    iget-object v0, v4, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v0, v5, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    iget-object v0, v6, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;

    .line 135
    iget-object v4, v0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v2, v4}, Lcom/htc/camera/PhotoSizeMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->setChecked(Z)V

    .line 138
    iget-object v0, v0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem$SubMenuItem;->photoSizeModeDescription:Ljava/lang/String;

    .line 144
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->setItems(Ljava/util/List;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;->setSummary(Ljava/lang/String;)V

    .line 148
    return-void

    .line 114
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 131
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method
