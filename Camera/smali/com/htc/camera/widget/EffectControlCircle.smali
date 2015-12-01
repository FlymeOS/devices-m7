.class public final Lcom/htc/camera/widget/EffectControlCircle;
.super Landroid/view/View;
.source "EffectControlCircle.java"


# static fields
.field private static CENTER_RADIUS:I

.field private static CIRCLE_BORDER_WIDTH:I

.field public static MIN_BORDER_RADIUS:I


# instance fields
.field private m_AllowUserChangeCenter:Z

.field private m_BorderRadius:I

.field private m_Center:Landroid/graphics/Point;

.field private m_OnCenterPointChangedListener:Lcom/htc/camera/widget/b;

.field private final m_PaintBorder:Landroid/graphics/Paint;

.field private final m_PaintCenter:Landroid/graphics/Paint;

.field private m_ShowBorder:Z

.field private m_ShowCenter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x28

    .line 19
    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    .line 20
    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->CENTER_RADIUS:I

    .line 21
    const/4 v0, 0x5

    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->CIRCLE_BORDER_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v1, 0x7f0a02f1

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/16 v2, 0xe6

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_BorderRadius:I

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    .line 40
    iput-boolean v3, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    .line 41
    iput-boolean v3, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->CENTER_RADIUS:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/camera/widget/EffectControlCircle;->CIRCLE_BORDER_WIDTH:I

    .line 54
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 55
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    sget v1, Lcom/htc/camera/widget/EffectControlCircle;->CIRCLE_BORDER_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 59
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public allowUserChangeCenterPoint(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    .line 69
    return-void
.end method

.method public final getCenterPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final isUserChangeCenterPointAllowed()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sget v2, Lcom/htc/camera/widget/EffectControlCircle;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_BorderRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_PaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-boolean v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_AllowUserChangeCenter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    return v3
.end method

.method public setBorderRadius(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_BorderRadius:I

    .line 129
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->invalidate()V

    .line 130
    return-void
.end method

.method public setBorderVisibility(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowBorder:Z

    .line 138
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->invalidate()V

    .line 139
    return-void
.end method

.method public setCenterPoint(Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 149
    const-string v0, "center"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center in NULL in setCenterPoint()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->getWidth()I

    move-result v0

    .line 155
    if-lez v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->getPaddingLeft()I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->getPaddingRight()I

    move-result v2

    .line 159
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-ge v3, v1, :cond_1

    .line 160
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 161
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v2

    if-le v1, v3, :cond_2

    .line 162
    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->invalidate()V

    .line 170
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/htc/camera/widget/b;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/htc/camera/widget/b;

    invoke-interface {v0, p0, p1}, Lcom/htc/camera/widget/b;->onCenterChanged(Lcom/htc/camera/widget/EffectControlCircle;Landroid/graphics/Point;)V

    .line 172
    :cond_3
    return-void
.end method

.method public setCenterPointVisibility(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_ShowCenter:Z

    .line 180
    invoke-virtual {p0}, Lcom/htc/camera/widget/EffectControlCircle;->invalidate()V

    .line 181
    return-void
.end method

.method public setOnCenterPointChangedListener(Lcom/htc/camera/widget/b;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_OnCenterPointChangedListener:Lcom/htc/camera/widget/b;

    .line 200
    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    iget-object v0, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/htc/camera/widget/EffectControlCircle;->m_Center:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 192
    :cond_0
    return-void
.end method
