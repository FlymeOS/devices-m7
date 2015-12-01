.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$4;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 0

    .prologue
    .line 3930
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$4;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3932
    sub-float v0, p1, v2

    .line 3936
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method
