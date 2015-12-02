.class Lcom/htc/camera/viewfinder/GLViewFinder$45;
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
    .line 2941
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$45;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2945
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$45;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewSourceRectChanged(FFFF)V
    invoke-static {v0, v1, v1, v2, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2800(Lcom/htc/camera/viewfinder/GLViewFinder;FFFF)V

    .line 2946
    return-void
.end method
