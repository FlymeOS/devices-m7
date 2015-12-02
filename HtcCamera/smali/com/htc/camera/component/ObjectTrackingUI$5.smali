.class Lcom/htc/camera/component/ObjectTrackingUI$5;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$5;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
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
    const-wide/16 v2, 0x0

    .line 190
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/TakingPictureState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$5;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$5;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$5;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    .line 194
    :goto_0
    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getFocusingState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$5;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$100(Lcom/htc/camera/component/ObjectTrackingUI;)V

    .line 198
    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    .line 193
    goto :goto_0
.end method
