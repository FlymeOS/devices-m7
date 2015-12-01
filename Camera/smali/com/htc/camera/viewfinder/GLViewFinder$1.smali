.class Lcom/htc/camera/viewfinder/GLViewFinder$1;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$1;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$1;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # ++operator for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$004(Lcom/htc/camera/viewfinder/GLViewFinder;)I

    .line 154
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$1;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->startRatioChangeAnimation(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$100(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 155
    return-void
.end method
