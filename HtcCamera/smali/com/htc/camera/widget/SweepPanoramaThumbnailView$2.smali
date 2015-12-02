.class Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;
.super Ljava/lang/Object;
.source "SweepPanoramaThumbnailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

.field final synthetic val$blueCanvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;->this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    iput-object p2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;->val$blueCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;->this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    # getter for: Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-static {v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->access$100(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;->val$blueCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-void
.end method
