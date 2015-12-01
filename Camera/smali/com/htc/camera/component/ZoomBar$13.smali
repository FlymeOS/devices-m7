.class Lcom/htc/camera/component/ZoomBar$13;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/Range",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$13;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$13;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$200(Lcom/htc/camera/component/ZoomBar;)V

    .line 380
    return-void
.end method
