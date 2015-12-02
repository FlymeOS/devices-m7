.class public Lcom/htc/camera/menu/MakeUpMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "MakeUpMenuItem.java"


# instance fields
.field private final m_Items:[Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem;->m_Items:[Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;

    .line 103
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem;->m_Items:[Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;

    new-instance v1, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;-><init>(Lcom/htc/camera/menu/MakeUpMenuItem;Lcom/htc/camera/HTCCamera;)V

    aput-object v1, v0, v2

    .line 104
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem;->m_Items:[Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MakeUpMenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 106
    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/camera/menu/MakeUpMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 117
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 123
    :goto_0
    invoke-static {v0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->mapToLevel(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MakeUpMenuItem;->setSummary(Ljava/lang/String;)V

    .line 124
    return-void

    .line 120
    :cond_0
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method
