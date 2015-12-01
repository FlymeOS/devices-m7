.class public Lcom/htc/lib1/cc/widget/optdatetimepicker/date/AccessibleDateAnimator;
.super Landroid/widget/ViewAnimator;
.source "AccessibleDateAnimator.java"


# instance fields
.field private mDateMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    const/16 v0, 0x16

    .line 47
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/date/AccessibleDateAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/date/AccessibleDateAnimator;->mDateMillis:J

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDateMillis(J)V
    .locals 0

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/date/AccessibleDateAnimator;->mDateMillis:J

    .line 34
    return-void
.end method
