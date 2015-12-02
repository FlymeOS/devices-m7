.class Lcom/htc/camera/mainbar/SelfTimerMainBarItem$3;
.super Ljava/lang/Object;
.source "SelfTimerMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$3;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$3;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->access$100(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    .line 226
    return-void
.end method
