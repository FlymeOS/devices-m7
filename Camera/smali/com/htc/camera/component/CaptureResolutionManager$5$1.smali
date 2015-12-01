.class Lcom/htc/camera/component/CaptureResolutionManager$5$1;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/CameraSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager$5;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$1;->this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;

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
            "Lcom/htc/camera/CameraSettings;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$1;->this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$5$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureResolutionManager$5$1$1;-><init>(Lcom/htc/camera/component/CaptureResolutionManager$5$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method
