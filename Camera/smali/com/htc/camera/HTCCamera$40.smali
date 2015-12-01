.class Lcom/htc/camera/HTCCamera$40;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;

.field final synthetic val$isCameraOpen:Z

.field final synthetic val$previewSize:Lcom/htc/camera/imaging/Size;

.field final synthetic val$zoomRange:Lcom/htc/camera/Range;

.field final synthetic val$zoomvalue:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/imaging/Size;Ljava/lang/Integer;ZLcom/htc/camera/Range;)V
    .locals 0

    .prologue
    .line 6638
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$40;->val$previewSize:Lcom/htc/camera/imaging/Size;

    iput-object p3, p0, Lcom/htc/camera/HTCCamera$40;->val$zoomvalue:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/htc/camera/HTCCamera$40;->val$isCameraOpen:Z

    iput-object p5, p0, Lcom/htc/camera/HTCCamera$40;->val$zoomRange:Lcom/htc/camera/Range;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6642
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$40;->val$previewSize:Lcom/htc/camera/imaging/Size;

    if-eqz v0, :cond_0

    .line 6644
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$40;->val$previewSize:Lcom/htc/camera/imaging/Size;

    # invokes: Lcom/htc/camera/HTCCamera;->onPreviewSizeChanged(Lcom/htc/camera/imaging/Size;)V
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$5400(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/imaging/Size;)V

    .line 6646
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$40;->val$zoomvalue:Ljava/lang/Integer;

    # invokes: Lcom/htc/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$5500(Lcom/htc/camera/HTCCamera;Ljava/lang/Integer;)V

    .line 6647
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera$40;->val$isCameraOpen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->access$5600(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6648
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$40;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$40;->val$zoomRange:Lcom/htc/camera/Range;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6649
    return-void
.end method
