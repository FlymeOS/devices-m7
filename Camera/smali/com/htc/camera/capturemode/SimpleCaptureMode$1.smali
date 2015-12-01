.class Lcom/htc/camera/capturemode/SimpleCaptureMode$1;
.super Ljava/lang/Object;
.source "SimpleCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/SimpleCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/SimpleCaptureMode;

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
            "Ljava/lang/Object;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/SimpleCaptureMode;

    # invokes: Lcom/htc/camera/capturemode/SimpleCaptureMode;->updatePreviewRestartState()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->access$000(Lcom/htc/camera/capturemode/SimpleCaptureMode;)V

    .line 27
    return-void
.end method
