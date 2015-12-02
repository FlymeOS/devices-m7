.class Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;
.super Ljava/lang/Object;
.source "PhotoBoothCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "photobooth-capture-pattern"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;Z)V

    goto :goto_0
.end method
