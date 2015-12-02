.class Lcom/htc/camera/component/CaptureResolutionManager$1;
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
    .line 125
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$1;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$1;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$300(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/base/DynamicPropertyChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$1;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$300(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/base/DynamicPropertyChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->release()V

    .line 132
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$1;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->access$302(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/base/DynamicPropertyChangedListener;)Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 134
    :cond_0
    return-void
.end method
