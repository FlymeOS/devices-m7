.class Lcom/htc/camera/component/ImageSettingsControllerProxy$1;
.super Lcom/htc/camera/component/ComponentBinder;
.source "ImageSettingsControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ComponentBinder",
        "<",
        "Lcom/htc/camera/IImageSettingsController;",
        "Lcom/htc/camera/component/ImageSettingsControllerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/ImageSettingsControllerProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$1;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/camera/component/ComponentBinder;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Lcom/htc/camera/IImageSettingsController;Lcom/htc/camera/component/ImageSettingsControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/IImageSettingsController;",
            "Lcom/htc/camera/component/ImageSettingsControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/htc/camera/IImageSettingsController;

    check-cast p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ImageSettingsControllerProxy$1;->getEventBindingInfo(Lcom/htc/camera/IImageSettingsController;Lcom/htc/camera/component/ImageSettingsControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Lcom/htc/camera/IImageSettingsController;Lcom/htc/camera/component/ImageSettingsControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/IImageSettingsController;",
            "Lcom/htc/camera/component/ImageSettingsControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->brightness:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->contrast:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->contrast:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->isSaturationSupported:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->isSaturationSupported:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->iso:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->iso:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->saturation:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->saturation:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->sharpness:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->sharpness:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;->whiteBalance:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/htc/camera/IImageSettingsController;

    check-cast p2, Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ImageSettingsControllerProxy$1;->getPropertyBindingInfo(Lcom/htc/camera/IImageSettingsController;Lcom/htc/camera/component/ImageSettingsControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method
