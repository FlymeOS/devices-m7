.class Lcom/htc/camera/component/ObjectTrackingRenderer$9;
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
    .line 630
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$9;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

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
    .line 633
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$9;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_IsFaceStable:Z
    invoke-static {v1, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1102(Lcom/htc/camera/component/ObjectTrackingRenderer;Z)Z

    .line 634
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$9;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$9;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$9;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1200(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeOverride() -isStableFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method
