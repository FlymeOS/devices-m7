.class Lcom/htc/camera/mainbar/SelfTimerMainBarItem$1;
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
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->access$100(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V

    .line 208
    return-void
.end method
