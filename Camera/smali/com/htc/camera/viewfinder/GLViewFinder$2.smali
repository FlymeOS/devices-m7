.class Lcom/htc/camera/viewfinder/GLViewFinder$2;
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
    .line 177
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$2;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$2;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-virtual {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$2;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->recreateSurfaces()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$200(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 183
    :cond_0
    return-void
.end method
