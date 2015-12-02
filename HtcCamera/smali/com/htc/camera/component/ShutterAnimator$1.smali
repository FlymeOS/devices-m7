.class Lcom/htc/camera/component/ShutterAnimator$1;
.super Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.source "ShutterAnimator.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ShutterAnimator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ShutterAnimator;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-direct {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$000(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/gl/SolidColorBrush;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$100(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 57
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$000(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/gl/SolidColorBrush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/gl/SolidColorBrush;->release()V

    .line 58
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$002(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/gl/SolidColorBrush;)Lcom/htc/camera/gl/SolidColorBrush;

    .line 60
    :cond_0
    return-void
.end method

.method protected onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # invokes: Lcom/htc/camera/component/ShutterAnimator;->drawAnimations(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/component/ShutterAnimator;->access$200(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 66
    return-void
.end method

.method protected onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$1;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # invokes: Lcom/htc/camera/component/ShutterAnimator;->setupAnimationResources(Lcom/htc/camera/PreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/component/ShutterAnimator;->access$300(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 72
    return-void
.end method
