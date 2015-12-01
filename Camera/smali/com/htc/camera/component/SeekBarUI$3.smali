.class Lcom/htc/camera/component/SeekBarUI$3;
.super Ljava/lang/Object;
.source "SeekBarUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SeekBarUI;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SeekBarUI;I)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/camera/component/SeekBarUI$3;->this$0:Lcom/htc/camera/component/SeekBarUI;

    iput p2, p0, Lcom/htc/camera/component/SeekBarUI$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$3;->this$0:Lcom/htc/camera/component/SeekBarUI;

    # getter for: Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/SeekBarUI;->access$000(Lcom/htc/camera/component/SeekBarUI;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/component/SeekBarUI$3;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$3;->this$0:Lcom/htc/camera/component/SeekBarUI;

    # getter for: Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/SeekBarUI;->access$000(Lcom/htc/camera/component/SeekBarUI;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/component/SeekBarUI$3;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 176
    const/4 v1, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$3;->this$0:Lcom/htc/camera/component/SeekBarUI;

    # getter for: Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/SeekBarUI;->access$000(Lcom/htc/camera/component/SeekBarUI;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/component/SeekBarUI$3;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
