.class public Lcom/htc/lib1/cc/view/viewpager/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/ag;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/ag;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewConfigurationCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/ah;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/af;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/af;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewConfigurationCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/ah;

    goto :goto_0
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewConfigurationCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/ah;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/ah;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
