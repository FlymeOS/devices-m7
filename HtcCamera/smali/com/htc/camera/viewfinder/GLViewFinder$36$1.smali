.class Lcom/htc/camera/viewfinder/GLViewFinder$36$1;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$36;

.field final synthetic val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$36;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$36;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$36;

    iget-object v1, v0, Lcom/htc/camera/viewfinder/GLViewFinder$36;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    iget-object v0, v0, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V
    invoke-static {v1, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V

    .line 1714
    return-void
.end method
