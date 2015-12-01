.class Lcom/htc/camera/component/ImageSettingsControllerProxy$5;
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
    .line 196
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$5;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$5;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$002(Lcom/htc/camera/component/ImageSettingsControllerProxy;Z)Z

    .line 202
    :cond_0
    return-void
.end method
