.class Lcom/htc/camera/mainbar/SceneMainBarItem$5;
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
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

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
    .line 269
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SceneMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$200(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    .line 270
    return-void
.end method
