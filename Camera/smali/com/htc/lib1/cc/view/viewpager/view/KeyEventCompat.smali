.class public Lcom/htc/lib1/cc/view/viewpager/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 119
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/j;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/j;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/KeyEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/k;

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/i;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/i;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/KeyEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/k;

    goto :goto_0
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/KeyEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/k;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/htc/lib1/cc/view/viewpager/view/k;->a(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/KeyEventCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/k;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/view/k;->b(I)Z

    move-result v0

    return v0
.end method
