.class public Lcom/htc/camera/menu/CheckBoxMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "CheckBoxMenuItem.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    if-nez p4, :cond_2

    .line 50
    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 51
    new-instance v1, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;

    invoke-direct {v1}, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;-><init>()V

    .line 52
    const v0, 0x7f0e007b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 53
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 54
    const v0, 0x7f0e007c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 55
    const v0, 0x7f0e007d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, v1, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 56
    const v0, 0x7f0e007e

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcCheckBox;

    iput-object v0, v1, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->checkBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    .line 57
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, p4

    .line 62
    :goto_0
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->checkBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->checkBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setVisibility(I)V

    .line 65
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->checkBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setChecked(Z)V

    .line 66
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->checkBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setClickable(Z)V

    .line 69
    :cond_0
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 70
    iget-object v2, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 73
    iget-object v0, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->getSummary()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/camera/menu/CheckBoxMenuItem;->setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v1, p3}, Lcom/htc/camera/menu/CheckBoxMenuItem;->setBackgroundForView(Landroid/view/View;I)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 76
    if-le p3, v4, :cond_1

    move-object v0, v1

    .line 77
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLeftIndent(Z)V

    .line 81
    :cond_1
    return-object v1

    .line 60
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;

    move-object v1, p4

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected onClicked()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->setChecked(Z)V

    .line 91
    return v1

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0
.end method
