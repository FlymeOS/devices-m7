.class Lcom/htc/camera/component/ObjectTrackingRenderer$11;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

.field final synthetic val$frameLine:Lcom/htc/camera/gl/PolyStraightLine;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/gl/PolyStraightLine;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$11;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    iput-object p2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$11;->val$frameLine:Lcom/htc/camera/gl/PolyStraightLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$11;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Is3DRenderingEnabled:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$11;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFrameLinePool:Ljava/util/Stack;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$1400(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$11;->val$frameLine:Lcom/htc/camera/gl/PolyStraightLine;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_0
    return-void
.end method
