.class public Lcom/htc/camera/menu/RadioButtonMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "RadioButtonMenuItem.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    if-nez p4, :cond_2

    .line 52
    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 53
    new-instance v1, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;

    invoke-direct {v1}, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;-><init>()V

    .line 54
    const v0, 0x7f0e007b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 55
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 56
    const v0, 0x7f0e007c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 57
    const v0, 0x7f0e007d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, v1, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 58
    const v0, 0x7f0e007f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 59
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, p4

    .line 64
    :goto_0
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setVisibility(I)V

    .line 67
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {p0}, Lcom/htc/camera/menu/RadioButtonMenuItem;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    .line 68
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setClickable(Z)V

    .line 71
    :cond_0
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 72
    iget-object v2, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 74
    iget-object v0, v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Lcom/htc/camera/menu/RadioButtonMenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/camera/menu/RadioButtonMenuItem;->getSummary()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/camera/menu/RadioButtonMenuItem;->setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v1, p3}, Lcom/htc/camera/menu/RadioButtonMenuItem;->setBackgroundForView(Landroid/view/View;I)V

    .line 76
    if-le p3, v4, :cond_1

    move-object v0, v1

    .line 77
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLeftIndent(Z)V

    .line 81
    :cond_1
    return-object v1

    .line 62
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/RadioButtonMenuItem$ItemViewInfo;

    move-object v1, p4

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
