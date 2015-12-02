.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 185
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->linkToCompoents()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$200(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    .line 191
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->initializeUI()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$300(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    .line 193
    :cond_0
    return-void
.end method
