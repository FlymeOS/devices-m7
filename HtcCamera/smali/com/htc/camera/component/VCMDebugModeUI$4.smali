.class Lcom/htc/camera/component/VCMDebugModeUI$4;
.super Ljava/lang/Object;
.source "VCMDebugModeUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/VCMDebugModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VCMDebugModeUI;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 145
    check-cast p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/VCMDebugModeUI$4;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ">;",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x42f00000    # 120.0f

    .line 149
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$700(Lcom/htc/camera/component/VCMDebugModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    iget-object v0, p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStepTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$900(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$000(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistanceTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1000(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$100(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42a00000    # 80.0f

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_ConfidenceTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1100(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$200(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42f80000    # 124.0f

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLumaTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1200(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$300(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x43280000    # 168.0f

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLumaTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1300(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$400(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x43540000    # 212.0f

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$4;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_0
    return-void
.end method
