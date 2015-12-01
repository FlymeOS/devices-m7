.class Lcom/htc/camera/component/CaptureResolutionManager$5;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/CaptureResolutionManager$5$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureResolutionManager$5$1;-><init>(Lcom/htc/camera/component/CaptureResolutionManager$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 206
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$5$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureResolutionManager$5$2;-><init>(Lcom/htc/camera/component/CaptureResolutionManager$5;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$5$3;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v2}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const-string v3, "Settings.PhotoSizeMode"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/CaptureResolutionManager$5$3;-><init>(Lcom/htc/camera/component/CaptureResolutionManager$5;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    # setter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->access$302(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/base/DynamicPropertyChangedListener;)Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 223
    return-void
.end method
