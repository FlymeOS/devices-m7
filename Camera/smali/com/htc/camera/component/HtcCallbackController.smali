.class final Lcom/htc/camera/component/HtcCallbackController;
.super Lcom/htc/camera/component/s;
.source "HtcCallbackController.java"

# interfaces
.implements Lcom/htc/camera/wrapper/a;


# instance fields
.field private final isEyeBlinked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isHdrSuggested:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLowlight:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 39
    const-string v0, "HTC Call-back Controller"

    invoke-direct {p0, v0, v2, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 40
    const-string v0, "HtcCallbackController.IsEyeBlinked"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/htc/camera/property/Property;

    .line 41
    const-string v0, "HtcCallbackController.IsHdrSuggested"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/htc/camera/property/Property;

    .line 42
    const-string v0, "HtcCallbackController.IsLowlight"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->isLowlight:Lcom/htc/camera/property/Property;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/HtcCallbackController;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->isLowlight:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/HtcCallbackController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public OnReceive(IIILandroid/hardware/Camera;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    iget-object v2, p0, Lcom/htc/camera/component/HtcCallbackController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() - callbackType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/camera/component/HtcCallbackController;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController;->TAG:Ljava/lang/String;

    const-string v1, "onReceive() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/HtcCallbackController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/htc/camera/HtcCallbackEventArgs;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v2, p0, Lcom/htc/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/htc/camera/property/Property;

    if-ne p2, v0, :cond_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 115
    :pswitch_2
    iget-object v2, p0, Lcom/htc/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/htc/camera/property/Property;

    if-ne p2, v0, :cond_2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    .line 119
    :pswitch_3
    iget-object v2, p0, Lcom/htc/camera/component/HtcCallbackController;->isLowlight:Lcom/htc/camera/property/Property;

    if-ne p2, v0, :cond_3

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    .line 108
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 55
    invoke-super {p0}, Lcom/htc/camera/component/s;->deinitializeOverride()V

    .line 56
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 68
    invoke-virtual {p0}, Lcom/htc/camera/component/HtcCallbackController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/htc/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/CameraThread;->isEyeBlinked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 70
    iget-object v1, p0, Lcom/htc/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/CameraThread;->isHdrSuggested:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 71
    iget-object v1, p0, Lcom/htc/camera/component/HtcCallbackController;->isLowlight:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/CameraThread;->isLowlight:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 74
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/HtcCallbackController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/HtcCallbackController$1;-><init>(Lcom/htc/camera/component/HtcCallbackController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 82
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/HtcCallbackController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/HtcCallbackController$2;-><init>(Lcom/htc/camera/component/HtcCallbackController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 91
    return-void
.end method
