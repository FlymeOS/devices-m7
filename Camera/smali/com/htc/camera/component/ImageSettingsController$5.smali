.class Lcom/htc/camera/component/ImageSettingsController$5;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eq v1, v0, :cond_1

    .line 396
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useSeparateWhiteBalanceSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-virtual {v0}, Lcom/htc/camera/component/ImageSettingsController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 398
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->access$500(Lcom/htc/camera/component/ImageSettingsController;Ljava/lang/String;Z)V

    .line 400
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # setter for: Lcom/htc/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/ImageSettingsController;->access$002(Lcom/htc/camera/component/ImageSettingsController;Z)Z

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # getter for: Lcom/htc/camera/component/ImageSettingsController;->m_SupportFrontCameraISO:Z
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsController;->access$600(Lcom/htc/camera/component/ImageSettingsController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-virtual {v0}, Lcom/htc/camera/component/ImageSettingsController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 404
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->access$700(Lcom/htc/camera/component/ImageSettingsController;Ljava/lang/String;Z)V

    .line 406
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$5;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # setter for: Lcom/htc/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/ImageSettingsController;->access$002(Lcom/htc/camera/component/ImageSettingsController;Z)Z

    .line 409
    :cond_1
    return-void

    .line 398
    :cond_2
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    goto :goto_0

    .line 404
    :cond_3
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    goto :goto_1
.end method
