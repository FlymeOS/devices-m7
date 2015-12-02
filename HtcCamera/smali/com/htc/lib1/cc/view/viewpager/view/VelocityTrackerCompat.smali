.class public Lcom/htc/lib1/cc/view/viewpager/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 69
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/r;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/r;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/VelocityTrackerCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/s;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/q;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/q;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/VelocityTrackerCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/s;

    goto :goto_0
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/VelocityTrackerCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/s;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/s;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/VelocityTrackerCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/s;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/s;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
