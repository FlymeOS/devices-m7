.class Lcom/htc/camera/viewfinder/GLViewFinder$29;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$29;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$29;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V

    .line 1589
    return-void
.end method
