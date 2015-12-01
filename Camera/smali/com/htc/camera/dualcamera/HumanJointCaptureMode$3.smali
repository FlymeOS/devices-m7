.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->updateUIVisibility()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$100(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    .line 92
    return-void
.end method
