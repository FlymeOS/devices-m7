.class Lcom/htc/camera/component/CaptureResolutionManager$5$3;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "CaptureResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/PhotoSizeMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager$5;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$3;->this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$3;->this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->onPhotoSizeModeChanged()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$1000(Lcom/htc/camera/component/CaptureResolutionManager;)V

    .line 221
    return-void
.end method
