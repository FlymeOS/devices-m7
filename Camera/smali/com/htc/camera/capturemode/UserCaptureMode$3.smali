.class Lcom/htc/camera/capturemode/UserCaptureMode$3;
.super Ljava/lang/Object;
.source "UserCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/UserCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/UserCaptureMode;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/camera/capturemode/UserCaptureMode$3;->this$0:Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode$State;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode$3;->this$0:Lcom/htc/camera/capturemode/UserCaptureMode;

    # invokes: Lcom/htc/camera/capturemode/UserCaptureMode;->onDefaultCaptureModeReleased()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->access$100(Lcom/htc/camera/capturemode/UserCaptureMode;)V

    .line 435
    :cond_0
    return-void
.end method
