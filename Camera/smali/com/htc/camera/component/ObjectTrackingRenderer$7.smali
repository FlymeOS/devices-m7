.class Lcom/htc/camera/component/ObjectTrackingRenderer$7;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/ObjectTrackingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

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
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    # setter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;
    invoke-static {v1, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1002(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/ObjectTrackingInfo;)Lcom/htc/camera/ObjectTrackingInfo;

    .line 610
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1000(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ObjectTrackingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1000(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ObjectTrackingInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;
    invoke-static {v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1000(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ObjectTrackingInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->mirrorRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    invoke-static {v1, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$800(Lcom/htc/camera/component/ObjectTrackingRenderer;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$100(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 614
    :cond_1
    return-void
.end method
