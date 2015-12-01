.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$9;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/SupportState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$9;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

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
            "Lcom/htc/camera/SupportState;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$9;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/SupportState;

    # invokes: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onHumanJointSupportStateChanged(Lcom/htc/camera/SupportState;)V
    invoke-static {v1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$700(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/SupportState;)V

    .line 377
    return-void
.end method
