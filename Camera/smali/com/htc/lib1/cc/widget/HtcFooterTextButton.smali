.class public Lcom/htc/lib1/cc/widget/HtcFooterTextButton;
.super Lcom/htc/lib1/cc/widget/HtcIconButton;
.source "HtcFooterTextButton.java"


# instance fields
.field private M3:I

.field private M5:I

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDisplayMode:I

.field private mResources:Landroid/content/res/Resources;

.field private mStyleMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/lib1/cc/b;->footerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mResources:Landroid/content/res/Resources;

    .line 24
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mConfiguration:Landroid/content/res/Configuration;

    .line 26
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M3:I

    .line 27
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M5:I

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mStyleMode:I

    .line 29
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mDisplayMode:I

    .line 87
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mResources:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mConfiguration:Landroid/content/res/Configuration;

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->init(Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/cc/R$styleable;->HtcFooter:[I

    sget v2, Lcom/htc/lib1/cc/k;->FooterBarStyle:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mStyleMode:I

    .line 95
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mDisplayMode:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/htc/lib1/cc/d;->margin_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M3:I

    .line 98
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/htc/lib1/cc/d;->spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M5:I

    .line 99
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setBackgroundResource(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->useSelectorWhenPressed(Z)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setBackgroundMode(I)V

    .line 104
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setButtonPaddings()V

    .line 105
    return-void
.end method

.method private isInRight()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 143
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mDisplayMode:I

    if-ne v2, v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mDisplayMode:I

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 151
    goto :goto_0
.end method

.method private setButtonAppearance()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\s.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setSingleLine(Z)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setMaxLines(I)V

    .line 115
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 124
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->isInRight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mStyleMode:I

    if-nez v0, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/k;->fixed_separator_secondary_xs:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 136
    :goto_1
    return-void

    .line 118
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setSingleLine(Z)V

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setMaxLines(I)V

    .line 120
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/k;->fixed_list_body_xs:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 130
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->mStyleMode:I

    if-nez v0, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/k;->fixed_separator_secondary_m:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/k;->fixed_b_button_primary_m:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private setButtonPaddings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->isInRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M5:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M5:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setPadding(IIII)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M3:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->M3:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 170
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onLayout(ZIIII)V

    .line 171
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setButtonPaddings()V

    .line 172
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->setButtonAppearance()V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onMeasure(II)V

    .line 163
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooterTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-super {p0, v0, p2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method
