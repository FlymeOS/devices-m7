.class public Lcom/htc/lib1/cc/widget/MyTableView;
.super Lcom/htc/lib1/cc/view/table/TableView;
.source "MyTableView.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setFocusable(Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setFocusable(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setFocusable(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method getKeyOfMyTableView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/TableView;->getKeyOfTableView()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMyTableChildHeight()I
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/TableView;->getTableChildHeight()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/view/table/TableView;->onLayout(ZIIII)V

    .line 143
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/TableView;->onMeasure(II)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/MyTableView;->getMyTableChildHeight()I

    move-result v1

    .line 155
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/MyTableView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 158
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/MyTableView;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenterView(I)V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->setCenterView(I)V

    .line 83
    return-void
.end method

.method public setCenterView(II)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/TableView;->setCenterView(II)V

    .line 93
    return-void
.end method

.method setKeyOfMyTableView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->setKeyOfTableView(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method setMyTableChildHeight(I)V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->setTableChildHeight(I)V

    .line 168
    return-void
.end method

.method setMyTableViewSlideOffset(I)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->setTableViewSlideOffset(I)V

    .line 164
    return-void
.end method

.method protected setSelectionInt(I)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->setSelectionInt(I)V

    .line 102
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/MyTableView;->mEnabled:Z

    .line 110
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/MyTableView;->reportScrollStateChange(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/MyTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    neg-int v1, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/MyTableView;->scrollIntoSlots()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->reportScrollStateChange(I)V

    .line 134
    return-void
.end method
