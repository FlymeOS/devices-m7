.class Lcom/htc/lib1/cc/view/viewpager/view/i;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/view/k;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIII)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    and-int v2, p1, p2

    if-eqz v2, :cond_0

    move v2, v0

    .line 51
    :goto_0
    or-int v3, p3, p4

    .line 52
    and-int v4, p1, v3

    if-eqz v4, :cond_1

    .line 54
    :goto_1
    if-eqz v2, :cond_4

    .line 55
    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 50
    goto :goto_0

    :cond_1
    move v0, v1

    .line 52
    goto :goto_1

    .line 58
    :cond_2
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr p0, v0

    .line 62
    :cond_3
    :goto_2
    return p0

    .line 59
    :cond_4
    if-eqz v0, :cond_3

    .line 60
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p0, v0

    goto :goto_2
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 68
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_1

    .line 69
    or-int/lit8 v0, p1, 0x1

    .line 71
    :goto_0
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_0

    .line 72
    or-int/lit8 v0, v0, 0x2

    .line 74
    :cond_0
    and-int/lit16 v0, v0, 0xf7

    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public a(II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/i;->a(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    .line 80
    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, p2, v0, v2, v3}, Lcom/htc/lib1/cc/view/viewpager/view/i;->a(IIIII)I

    move-result v1

    .line 82
    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, p2, v2, v3, v4}, Lcom/htc/lib1/cc/view/viewpager/view/i;->a(IIIII)I

    move-result v1

    .line 84
    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/i;->a(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
