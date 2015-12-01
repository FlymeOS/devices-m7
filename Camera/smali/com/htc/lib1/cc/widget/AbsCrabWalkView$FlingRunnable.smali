.class public Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsCrabWalkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mLastFlingX:I

.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/lib1/cc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V
    .locals 2

    .prologue
    .line 3043
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3044
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mScroller:Lcom/htc/lib1/cc/widget/HtcScroller;

    .line 3045
    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 3085
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    .line 3086
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->clearScrollingCache()V

    .line 3087
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3094
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 3203
    :goto_0
    return-void

    .line 3098
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3099
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 3103
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mScroller:Lcom/htc/lib1/cc/widget/HtcScroller;

    .line 3104
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v2

    .line 3105
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcScroller;->getCurrY()I

    move-result v3

    .line 3108
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcScroller;->getCurrX()I

    move-result v4

    .line 3116
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3117
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v0, v4

    .line 3124
    :goto_1
    if-lez v0, :cond_5

    .line 3126
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v6, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    iput v6, v5, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 3127
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3130
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3131
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    .line 3134
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3164
    :goto_2
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5, v0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->trackMotionScroll(II)Z

    .line 3167
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v5, v5, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v6, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3168
    if-eqz v0, :cond_a

    .line 3173
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3174
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v5, v5, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewLeft:I

    if-eq v0, v5, :cond_a

    move v0, v1

    .line 3185
    :goto_3
    if-eqz v0, :cond_9

    .line 3187
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3188
    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingX:I

    .line 3193
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3119
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 3136
    :cond_4
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    .line 3139
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 3144
    :cond_5
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 3145
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v7, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v7, v7, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 3147
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3150
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3151
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    .line 3154
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    .line 3156
    :cond_6
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v6, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    .line 3159
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    .line 3178
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v5, v5, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewTop:I

    if-eq v0, v5, :cond_a

    move v0, v1

    .line 3179
    goto/16 :goto_3

    .line 3190
    :cond_8
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    .line 3195
    :cond_9
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_3
.end method

.method public start(I)V
    .locals 9

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3057
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 3058
    :goto_0
    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingX:I

    .line 3059
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mScroller:Lcom/htc/lib1/cc/widget/HtcScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/lib1/cc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 3068
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 3069
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3077
    return-void

    .line 3057
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3062
    :cond_1
    if-gez p1, :cond_2

    const v2, 0x7fffffff

    .line 3063
    :goto_2
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mLastFlingY:I

    .line 3064
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->mScroller:Lcom/htc/lib1/cc/widget/HtcScroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/lib1/cc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_1

    .line 3062
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
