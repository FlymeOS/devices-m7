.class Lcom/htc/camera/splitcapture/SplitVideoUI$6;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/ui/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rube: onCalculatePreviewBounds() - original bounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1800(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
