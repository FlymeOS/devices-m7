.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
.super Lcom/htc/lib1/cc/widget/HtcListView;
.source "ListPopupBubbleWindow.java"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1879
    const/4 v0, 0x0

    sget v1, Lcom/htc/lib1/cc/b;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1881
    iput-boolean p2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    .line 1884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1885
    return-void
.end method

.method static synthetic access$502(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z
    .locals 0

    .prologue
    .line 1827
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2038
    if-nez v0, :cond_0

    .line 2039
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 2040
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2042
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2046
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingLeft()I

    move-result v1

    .line 2047
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingRight()I

    move-result v2

    .line 2049
    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2050
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2052
    if-lez v0, :cond_1

    .line 2053
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2057
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2058
    return-void

    .line 2055
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1964
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1913
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final mockMeasureHeightOfChildren(IIIII)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1970
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1971
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingTop()I

    move-result v0

    .line 1972
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingBottom()I

    move-result v2

    .line 1974
    if-nez v3, :cond_1

    .line 1975
    add-int p4, v0, v2

    .line 2033
    :cond_0
    :goto_0
    return p4

    .line 1979
    :cond_1
    add-int/2addr v0, v2

    .line 1980
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1981
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getDividerHeight()I

    move-result v2

    .line 1982
    if-lez v2, :cond_4

    if-eqz v4, :cond_4

    .line 1991
    :goto_1
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 p3, v4, -0x1

    .line 1996
    :cond_2
    :goto_2
    if-gt p2, p3, :cond_7

    .line 1998
    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2001
    invoke-direct {p0, v4, p2, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 2003
    if-lez p2, :cond_3

    .line 2005
    add-int/2addr v0, v2

    .line 2014
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 2016
    if-lt v0, p4, :cond_5

    .line 2019
    if-ltz p5, :cond_0

    if-le p2, p5, :cond_0

    if-lez v1, :cond_0

    if-eq v0, p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1982
    goto :goto_1

    .line 2026
    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v1, v0

    .line 1996
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p4, v0

    .line 2033
    goto :goto_0
.end method
