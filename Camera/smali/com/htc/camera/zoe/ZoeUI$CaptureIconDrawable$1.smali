.class Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;->this$0:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;->this$0:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    # getter for: Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->access$400(Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    return-void
.end method
