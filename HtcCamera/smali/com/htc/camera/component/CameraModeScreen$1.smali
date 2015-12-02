.class Lcom/htc/camera/component/CameraModeScreen$1;
.super Ljava/lang/Object;
.source "CameraModeScreen.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraModeScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraModeScreen;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/component/CameraModeScreen$1;->this$0:Lcom/htc/camera/component/CameraModeScreen;

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
    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$1;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_IsChangingCaptureMode:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$000(Lcom/htc/camera/component/CameraModeScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$1;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraModeScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/htc/camera/component/CameraModeScreen$1;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraMode;

    # invokes: Lcom/htc/camera/component/CameraModeScreen;->showModeIcon(Lcom/htc/camera/CameraMode;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CameraModeScreen;->access$100(Lcom/htc/camera/component/CameraModeScreen;Lcom/htc/camera/CameraMode;)V

    .line 88
    :cond_0
    return-void
.end method
