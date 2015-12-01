.class Lcom/htc/camera/splitcapture/SplitPhotoUI$4;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Lcom/htc/camera/ui/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$4;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$4;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
