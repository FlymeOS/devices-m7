.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$3;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$3;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$3;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setScrollState(I)V

    .line 257
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$3;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->populate()V

    .line 258
    return-void
.end method
