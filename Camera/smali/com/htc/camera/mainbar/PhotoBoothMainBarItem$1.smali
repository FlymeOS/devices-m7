.class Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;
.super Ljava/lang/Object;
.source "PhotoBoothMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

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
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$000(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItemPattern()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$100(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    .line 61
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$000(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    goto :goto_0
.end method
