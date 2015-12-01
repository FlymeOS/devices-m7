.class Lcom/htc/camera/widget/ScaleMeterItem$2;
.super Ljava/lang/Object;
.source "ScaleMeterItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ScaleMeterItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ScaleMeterItem;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/widget/ScaleMeterItem$2;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$2;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # invokes: Lcom/htc/camera/widget/ScaleMeterItem;->increaseLevel()V
    invoke-static {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->access$200(Lcom/htc/camera/widget/ScaleMeterItem;)V

    .line 78
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$2;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # getter for: Lcom/htc/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/k;
    invoke-static {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->access$100(Lcom/htc/camera/widget/ScaleMeterItem;)Lcom/htc/camera/widget/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$2;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # getter for: Lcom/htc/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/k;
    invoke-static {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->access$100(Lcom/htc/camera/widget/ScaleMeterItem;)Lcom/htc/camera/widget/k;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem$2;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    invoke-interface {v0, v1, p1}, Lcom/htc/camera/widget/k;->onButtonClicked(Lcom/htc/camera/widget/ScaleMeterItem;Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method
