.class Lcom/htc/camera/splitcapture/SplitCaptureMode$18;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

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
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$18;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

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
    .line 814
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$18;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/SupportState;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onDualCaptureSupportStateChanged(Lcom/htc/camera/SupportState;)V

    .line 815
    return-void
.end method
