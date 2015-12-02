.class Lcom/htc/camera/component/SwitchCameraSlidingUI$7;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$7;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 541
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$7;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$7;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->showFullScreenSwitchTypeIcon()V
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    .line 544
    :cond_0
    return-void
.end method
