.class Lcom/htc/camera/splitcapture/SplitVideoUI$12;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/component/ComponentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1043
    check-cast p3, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1047
    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    instance-of v0, v0, Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    const-class v1, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/IViewFinder3D;)Lcom/htc/camera/IViewFinder3D;

    .line 1051
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2702(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1071
    :cond_0
    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    instance-of v0, v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    const-class v1, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2902(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/ui/IOpenGLViewfinder;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 1075
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 1080
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/16 v1, 0x2713

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3100(Lcom/htc/camera/splitcapture/SplitVideoUI;I)V

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1084
    iget-object v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v7, Lcom/htc/camera/CloseableHandleReference;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v6, v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3202(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalculator:Lcom/htc/camera/ui/a;
    invoke-static {v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/a;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3402(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 1092
    :cond_4
    return-void
.end method
