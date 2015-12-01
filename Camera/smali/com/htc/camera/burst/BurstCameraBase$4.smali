.class Lcom/htc/camera/burst/BurstCameraBase$4;
.super Ljava/lang/Object;
.source "BurstCameraBase.java"

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
.field final synthetic this$0:Lcom/htc/camera/burst/BurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/BurstCameraBase;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # invokes: Lcom/htc/camera/burst/BurstCameraBase;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$700(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/burst/BurstCameraBase;->access$800(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase$4;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/burst/BurstCameraBase;->access$900(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
