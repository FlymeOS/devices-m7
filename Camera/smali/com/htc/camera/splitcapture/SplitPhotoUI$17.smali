.class Lcom/htc/camera/splitcapture/SplitPhotoUI$17;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

.field final synthetic val$newBounds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;->val$newBounds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLPanelBounds:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4000(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1501
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;->val$newBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1502
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLPanelBounds:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4000(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1503
    :cond_0
    return-void
.end method
