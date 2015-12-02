.class public Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 110
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/n;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/n;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/m;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/m;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    goto :goto_0
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/o;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/o;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/o;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/MotionEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/o;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/o;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
