.class Lcom/htc/camera/widget/ColorMultiplyDrawable$1;
.super Ljava/lang/Object;
.source "ColorMultiplyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ColorMultiplyDrawable;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    iput-object p2, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    # getter for: Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyDrawable;->access$000(Lcom/htc/camera/widget/ColorMultiplyDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ColorMultiplyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 31
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    # getter for: Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyDrawable;->access$000(Lcom/htc/camera/widget/ColorMultiplyDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method
