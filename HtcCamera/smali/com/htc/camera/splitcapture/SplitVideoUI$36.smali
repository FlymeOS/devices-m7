.class Lcom/htc/camera/splitcapture/SplitVideoUI$36;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$36;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$36;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->FULL:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareQuadrangle(Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V

    .line 2868
    return-void
.end method
