.class Lcom/htc/camera/mainbar/SelfTimerMainBarItem$4;
.super Ljava/lang/Object;
.source "SelfTimerMainBarItem.java"

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
.field final synthetic this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$4;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$4;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->access$100(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    .line 236
    return-void
.end method
