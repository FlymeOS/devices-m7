.class Lcom/htc/lib1/cc/widget/HtcListView$2;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListView$2;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$2;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->invalidate()V

    .line 307
    return-void
.end method
