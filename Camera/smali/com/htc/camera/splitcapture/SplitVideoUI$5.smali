.class Lcom/htc/camera/splitcapture/SplitVideoUI$5;
.super Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.source "SplitVideoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onDeinitializePreviewRenderer()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1400(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 393
    return-void
.end method

.method protected onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1500(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 399
    return-void
.end method

.method protected onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1600(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 405
    return-void
.end method
