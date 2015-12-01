.class Lcom/htc/camera/viewfinder/GLViewFinder$4;
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
    .line 235
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$4;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$4;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V

    .line 240
    return-void
.end method
