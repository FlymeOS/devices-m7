.class Lcom/htc/camera/splitcapture/SplitPhotoUI$3;
.super Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.source "SplitPhotoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onDeinitializePreviewRenderer()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 380
    return-void
.end method

.method protected onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onDrawPreviewRenderer(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$800(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 386
    return-void
.end method

.method protected onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$900(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 392
    return-void
.end method
