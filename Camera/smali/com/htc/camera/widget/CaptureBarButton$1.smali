.class Lcom/htc/camera/widget/CaptureBarButton$1;
.super Ljava/lang/Object;
.source "CaptureBarButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/CaptureBarButton;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/CaptureBarButton;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/camera/widget/CaptureBarButton$1;->this$0:Lcom/htc/camera/widget/CaptureBarButton;

    iput-object p2, p0, Lcom/htc/camera/widget/CaptureBarButton$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton$1;->this$0:Lcom/htc/camera/widget/CaptureBarButton;

    # getter for: Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/widget/CaptureBarButton;->access$000(Lcom/htc/camera/widget/CaptureBarButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/CaptureBarButton$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    return-void
.end method
