.class public Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;
.super Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;
.source "ReminderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccHint:Ljava/lang/StringBuffer;

.field private mAccessibilityEnabled:Z

.field private mButtonAccessEnable:Z

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;


# direct methods
.method private isAccessibilityEnable()Z
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->isAccessibilityEnable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 519
    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_2

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->onAccessibilityEnter()V

    .line 522
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mAccHint:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mAccHint:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 527
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->this$0:Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->getButtonCount()I

    move-result v0

    return v0
.end method

.method public getDragThreshold()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->this$0:Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->getDragThreshold()I

    move-result v0

    return v0
.end method

.method public isButtonAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mButtonAccessEnable:Z

    return v0
.end method

.method public onAccessibilityEnter()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "RemiView"

    const-string v1, "onAccessibilityEnter"

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mAccHint:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mAccHint:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    return-void
.end method

.method public onButtonAccessibilityAction(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->isAccessibilityEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->this$0:Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->c(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V

    .line 630
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->isAccessibilityEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "RemiView"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->this$0:Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->c(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V

    .line 623
    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonAccessibilityEnabled(Z)V
    .locals 0

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mButtonAccessEnable:Z

    .line 638
    return-void
.end method

.method public setDragAnimation(Lcom/htc/lib1/cc/widget/reminder/drag/a;)V
    .locals 0

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->setDragAnimation(Lcom/htc/lib1/cc/widget/reminder/drag/a;)V

    .line 610
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->setHint(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 651
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->setPressed(Z)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->setPressed(Z)V

    goto :goto_0
.end method
