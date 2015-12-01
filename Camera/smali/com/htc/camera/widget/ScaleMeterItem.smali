.class public Lcom/htc/camera/widget/ScaleMeterItem;
.super Landroid/widget/LinearLayout;
.source "ScaleMeterItem.java"


# instance fields
.field private LEVEL_NUMBER_MAX:I

.field private LEVEL_NUMBER_MIN:I

.field protected final TAG:Ljava/lang/String;

.field private mOnButtonClickedListener:Lcom/htc/camera/widget/k;

.field private mOnLevelChangedListener:Lcom/htc/camera/widget/l;

.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_Icon:Landroid/widget/ImageView;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private m_ScaleTextColumn:Landroid/widget/LinearLayout;

.field private m_Title:Landroid/widget/TextView;

.field private m_TitleBar:Landroid/widget/LinearLayout;

.field private m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/htc/camera/widget/ScaleMeterItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/widget/ScaleMeterItem$1;-><init>(Lcom/htc/camera/widget/ScaleMeterItem;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/htc/camera/widget/ScaleMeterItem$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/widget/ScaleMeterItem$2;-><init>(Lcom/htc/camera/widget/ScaleMeterItem;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 116
    iput p2, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    .line 117
    iput p3, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    .line 118
    invoke-direct {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->initialize()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ScaleMeterItem;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/ScaleMeterItem;)Lcom/htc/camera/widget/k;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/k;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/widget/ScaleMeterItem;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->increaseLevel()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/widget/ScaleMeterItem;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/camera/widget/ScaleMeterItem;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    return p1
.end method

.method private decreaseLevel()V
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 243
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 244
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 232
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    if-le v0, v1, :cond_0

    .line 233
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    const v1, 0x7f03007c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_TitleBar:Landroid/widget/LinearLayout;

    .line 128
    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Icon:Landroid/widget/ImageView;

    .line 129
    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Title:Landroid/widget/TextView;

    .line 131
    new-instance v1, Lcom/htc/camera/widget/SeekBarBaseDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/widget/SeekBarBaseDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    .line 132
    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    iget v2, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/SeekBarBaseDrawable;->setLevels(I)V

    .line 133
    const v1, 0x7f0e01e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    .line 134
    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_0
    const v1, 0x7f0e019e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 142
    new-instance v2, Lcom/htc/camera/widget/ScaleMeterItem$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/widget/ScaleMeterItem$3;-><init>(Lcom/htc/camera/widget/ScaleMeterItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    :cond_1
    const v1, 0x7f0e0198

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ScaleTextColumn:Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f0e0196

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 160
    const v1, 0x7f0e019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 162
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 169
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/htc/camera/widget/ScaleMeterItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ScaleMeterItem$4;-><init>(Lcom/htc/camera/widget/ScaleMeterItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setFocusable(Z)V

    .line 191
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setFocusable(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->refreshLevel()V

    .line 194
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    return v0
.end method

.method public getScaleTextColumn()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ScaleTextColumn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_TitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onLevelChanged()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 211
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/l;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/l;

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-interface {v0, p0, v1}, Lcom/htc/camera/widget/l;->onLevelChanged(Lcom/htc/camera/widget/ScaleMeterItem;I)V

    .line 213
    :cond_0
    return-void
.end method

.method public refreshLevel()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->updateLevel()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 202
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 203
    return-void
.end method

.method public setLevel(I)V
    .locals 2

    .prologue
    .line 99
    iput p1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 101
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    if-le v0, v1, :cond_1

    .line 102
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    .line 108
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 104
    iget v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    iput v0, p0, Lcom/htc/camera/widget/ScaleMeterItem;->m_Level:I

    goto :goto_0
.end method

.method public final setOnButtonClickedListener(Lcom/htc/camera/widget/k;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/k;

    .line 221
    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/htc/camera/widget/l;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/l;

    .line 225
    return-void
.end method

.method public updateLevel()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method
