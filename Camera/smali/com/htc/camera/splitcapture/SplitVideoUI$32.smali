.class Lcom/htc/camera/splitcapture/SplitVideoUI$32;
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
    .line 2334
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$32;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$32;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$32;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MergedCoverImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->setReviewImage(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6700(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/Bitmap;)V

    .line 2339
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$32;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSetReviewImage:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6802(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z

    .line 2340
    return-void
.end method
