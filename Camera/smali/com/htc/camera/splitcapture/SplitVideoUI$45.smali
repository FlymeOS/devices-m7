.class Lcom/htc/camera/splitcapture/SplitVideoUI$45;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$img:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 3457
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->val$img:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setReviewImage()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/gl/BitmapBrush;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->val$img:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/htc/camera/gl/BitmapBrush;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$10002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BitmapBrush;)Lcom/htc/camera/gl/BitmapBrush;

    .line 3463
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$45;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$10000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BitmapBrush;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 3465
    :cond_0
    return-void
.end method
