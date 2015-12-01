.class Lcom/htc/camera/viewfinder/GLViewFinder$38$3;
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
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;)V
    .locals 0

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$3;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    .line 1832
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v1, v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v1

    .line 1835
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v2, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2, v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    .line 1836
    :goto_0
    if-eq v1, v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$3;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$3;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    iget-object v1, v1, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/16 v2, 0x2738

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;I)Z

    .line 1839
    :cond_0
    return-void

    .line 1835
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
