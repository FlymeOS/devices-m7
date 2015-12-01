.class Lcom/htc/camera/component/ImageSettingsControllerProxy$7;
.super Ljava/lang/Object;
.source "ImageSettingsControllerProxy.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # getter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$300(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manual capture is disabled, reset image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # invokes: Lcom/htc/camera/component/ImageSettingsControllerProxy;->resetImageSettings()V
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$200(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    .line 238
    :cond_0
    return-void
.end method
