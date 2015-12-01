.class Lcom/htc/camera/menu/ResolutionMenuItem$1;
.super Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;
.source "ResolutionMenuItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/ResolutionMenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$1;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->onClicked()Z

    .line 114
    invoke-virtual {p0}, Lcom/htc/camera/menu/ResolutionMenuItem$1;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 115
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, v0, Lcom/htc/camera/CameraSettings;->isWideRatioPhoto:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 116
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    goto :goto_0
.end method
