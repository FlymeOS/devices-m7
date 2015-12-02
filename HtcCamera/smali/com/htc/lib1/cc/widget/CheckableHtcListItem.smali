.class public Lcom/htc/lib1/cc/widget/CheckableHtcListItem;
.super Lcom/htc/lib1/cc/widget/HtcListItem;
.source "CheckableHtcListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

.field private mMode:I

.field private mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcListItem:[I

    sget v1, Lcom/htc/lib1/cc/b;->htcListItemStyle:I

    sget v2, Lcom/htc/lib1/cc/k;->htcListItem:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mMode:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mMode:I

    .line 95
    :cond_0
    return-void
.end method

.method private setupAutomotiveMode()V
    .locals 3

    .prologue
    .line 104
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    instance-of v0, v1, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 106
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setUseFontSizeInStyle(Z)V

    .line 107
    check-cast v1, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    sget v0, Lcom/htc/lib1/cc/k;->fixed_automotive_darklist_primary_m:I

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 146
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mergeDrawableStates([I[I)[I

    .line 150
    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    instance-of v0, v1, Lcom/htc/lib1/cc/widget/HtcCheckBox;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 63
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcCheckBox;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setClickable(Z)V

    .line 65
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 71
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->setLastComponentAlign(Z)V

    .line 75
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mMode:I

    if-ne v0, v1, :cond_4

    .line 76
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->setupAutomotiveMode()V

    .line 84
    :cond_2
    :goto_1
    return-void

    .line 66
    :cond_3
    instance-of v0, v1, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 67
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 68
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setClickable(Z)V

    .line 69
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setFocusable(Z)V

    goto :goto_0

    .line 78
    :cond_4
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    instance-of v1, v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    if-eqz v1, :cond_2

    .line 80
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setUseFontSizeInStyle(Z)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 156
    const-class v0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 158
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 163
    const-class v0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 166
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    .line 130
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v1, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setChecked(Z)V

    .line 138
    :goto_1
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->refreshDrawableState()V

    .line 142
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->isChecked()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 135
    :goto_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, p1}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 134
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CheckableHtcListItem;->setChecked(Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
