.class public Lcom/htc/lib1/cc/widget/reminder/drag/DragAnimationBase;
.super Lcom/htc/lib1/cc/widget/reminder/drag/a;
.source "DragAnimationBase.java"


# instance fields
.field private mKeySplineInterpolator:Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/drag/a;-><init>()V

    .line 24
    new-instance v0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3f3d70a4    # 0.74f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/DragAnimationBase;->mKeySplineInterpolator:Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;

    return-void
.end method
