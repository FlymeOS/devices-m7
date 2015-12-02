.class Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItemImageComponent.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/ak;
.implements Lcom/htc/lib1/cc/widget/al;


# instance fields
.field protected mComponentHeight:I

.field protected mComponentWidth:I

.field protected mContext:Landroid/content/Context;

.field mIsAutomotiveMode:Z

.field mItemMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 27
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 27
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 27
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 40
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->initComponentSize()V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private initComponentSize()V
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 46
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 47
    return-void
.end method


# virtual methods
.method public notifyItemMode(I)V
    .locals 2

    .prologue
    .line 165
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 166
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 167
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 168
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->initComponentSize()V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 147
    if-eqz p1, :cond_1

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 149
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 154
    :goto_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->initComponentSize()V

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 152
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    invoke-static {v1, p1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
