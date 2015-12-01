.class Lcom/htc/camera/capturemode/UserCaptureMode$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/UserCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/UserCaptureMode;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/camera/capturemode/UserCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/UserCaptureMode;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/UserCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/UserCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode$2;->this$0:Lcom/htc/camera/capturemode/UserCaptureMode;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/capturemode/UserCaptureMode;->setupDefaultEffectScene(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->access$000(Lcom/htc/camera/capturemode/UserCaptureMode;I)V

    .line 80
    :cond_0
    return-void
.end method
