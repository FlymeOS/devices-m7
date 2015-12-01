.class Lcom/htc/camera/viewfinder/GLViewFinder$37;
.super Lcom/htc/camera/trigger/Trigger;
.source "GLViewFinder.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$37;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$37;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onCameraThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7000(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 1729
    return-void
.end method
