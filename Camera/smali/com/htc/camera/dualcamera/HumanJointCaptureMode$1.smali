.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

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
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 60
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$000(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 63
    if-eq v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 69
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$000(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 72
    if-eq v0, v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
