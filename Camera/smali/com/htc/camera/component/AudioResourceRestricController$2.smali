.class Lcom/htc/camera/component/AudioResourceRestricController$2;
.super Ljava/lang/Object;
.source "AudioResourceRestricController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioResourceRestricController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$2;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$2;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$2;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AudioResourceRestricController;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 99
    :cond_0
    return-void
.end method
