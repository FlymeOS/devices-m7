.class Lcom/htc/camera/viewfinder/GLViewFinder$34;
.super Lcom/htc/camera/trigger/Trigger;
.source "GLViewFinder.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$34;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$34;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->startRatioChangeAnimation(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$100(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 1691
    return-void
.end method
