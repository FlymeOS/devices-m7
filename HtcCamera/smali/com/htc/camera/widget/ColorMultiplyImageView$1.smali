.class Lcom/htc/camera/widget/ColorMultiplyImageView$1;
.super Ljava/lang/Object;
.source "ColorMultiplyImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ColorMultiplyImageView;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/camera/widget/ColorMultiplyImageView$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyImageView;

    iput-object p2, p0, Lcom/htc/camera/widget/ColorMultiplyImageView$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyImageView$1;->this$0:Lcom/htc/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/htc/camera/widget/ColorMultiplyImageView$1;->val$canvas:Landroid/graphics/Canvas;

    # invokes: Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->access$001(Lcom/htc/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method
