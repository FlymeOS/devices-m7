.class Lcom/htc/lib1/cc/widget/setupwizard/HtcItemContainerListView;
.super Lcom/htc/lib1/cc/widget/HtcListView;
.source "HtcRadioListWizardActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 627
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 630
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 632
    invoke-super {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListView;->onMeasure(II)V

    .line 633
    return-void
.end method
