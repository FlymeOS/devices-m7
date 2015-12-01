.class Lcom/htc/camera/component/ImageSettingsControllerProxy$2;
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
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$2;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$2;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$002(Lcom/htc/camera/component/ImageSettingsControllerProxy;Z)Z

    .line 167
    return-void
.end method
