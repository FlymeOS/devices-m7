.class Lcom/htc/camera/component/ObjectTrackingRenderer$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$2;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$2;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$2;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$2;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->clearObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$400(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    goto :goto_0
.end method
