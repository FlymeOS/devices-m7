.class Lcom/htc/camera/viewfinder/GLViewFinder$18;
.super Lcom/htc/camera/CloseableHandle;
.source "GLViewFinder.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$18;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$18;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->release3DPreviewRendering(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3800(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V

    .line 1211
    return-void
.end method
