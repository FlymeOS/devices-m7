.class Lcom/htc/camera/widget/ImagePropertyItem$3;
.super Ljava/lang/Object;
.source "ImagePropertyItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ImagePropertyItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ImagePropertyItem;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem$3;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$3;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # invokes: Lcom/htc/camera/widget/ImagePropertyItem;->increaseLevel()V
    invoke-static {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->access$300(Lcom/htc/camera/widget/ImagePropertyItem;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$3;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # getter for: Lcom/htc/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/e;
    invoke-static {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->access$200(Lcom/htc/camera/widget/ImagePropertyItem;)Lcom/htc/camera/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$3;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # getter for: Lcom/htc/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/e;
    invoke-static {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->access$200(Lcom/htc/camera/widget/ImagePropertyItem;)Lcom/htc/camera/widget/e;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/ImagePropertyItem$3;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-interface {v0, v1, p1}, Lcom/htc/camera/widget/e;->onButtonClicked(Lcom/htc/camera/widget/ImagePropertyItem;Landroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method
