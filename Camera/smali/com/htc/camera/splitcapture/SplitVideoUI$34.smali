.class Lcom/htc/camera/splitcapture/SplitVideoUI$34;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$doEnableActionScreen:Z

.field final synthetic val$isForcePrepare:Z

.field final synthetic val$nextState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoCaptureState;ZZ)V
    .locals 0

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->val$nextState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    iput-boolean p3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->val$doEnableActionScreen:Z

    iput-boolean p4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->val$isForcePrepare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->RIGHT:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    const/4 v3, 0x1

    new-instance v4, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;

    invoke-direct {v4, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI$34;)V

    iget-boolean v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->val$isForcePrepare:Z

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareQuadrangle(Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V

    .line 2640
    return-void
.end method
