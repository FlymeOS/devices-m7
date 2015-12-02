.class Lcom/htc/camera/viewfinder/GLViewFinder$3;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/o;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$3;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrameReceived(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;[B)V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$3;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$3;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/16 v2, 0x2724

    const/4 v3, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;IZ)Z

    .line 195
    return-void
.end method
