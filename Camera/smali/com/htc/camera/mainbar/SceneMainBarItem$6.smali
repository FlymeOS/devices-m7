.class Lcom/htc/camera/mainbar/SceneMainBarItem$6;
.super Ljava/lang/Object;
.source "SceneMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$400(Lcom/htc/camera/mainbar/SceneMainBarItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - isZoeActive:"

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SceneMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$200(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    .line 284
    return-void
.end method
