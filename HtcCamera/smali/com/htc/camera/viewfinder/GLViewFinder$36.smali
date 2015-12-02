.class Lcom/htc/camera/viewfinder/GLViewFinder$36;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1706
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;

    invoke-direct {v1, p0, p2}, Lcom/htc/camera/viewfinder/GLViewFinder$36$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$36;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 1719
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$36;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V
    invoke-static {v1, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V

    goto :goto_0
.end method
