.class Lcom/htc/camera/component/ImageSettingsControllerProxy$6;
.super Ljava/lang/Object;
.source "ImageSettingsControllerProxy.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x271a

    .line 209
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # invokes: Lcom/htc/camera/component/ImageSettingsControllerProxy;->resetImageSettings()V
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$200(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    .line 214
    :cond_0
    return-void
.end method
