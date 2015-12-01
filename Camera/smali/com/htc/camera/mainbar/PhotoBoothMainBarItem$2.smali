.class Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;
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
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

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
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 208
    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;
    invoke-static {v2}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$400(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/property/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    # setter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v2, v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$302(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/capturemode/CaptureMode;

    .line 218
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$000(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$300(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->m_PhotoBoothPatternChangedCallback:Lcom/htc/camera/property/c;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$400(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Lcom/htc/camera/property/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$500(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_CaptureModeManager.captureMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItemPattern()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$100(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    .line 227
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->access$000(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;)V

    goto :goto_0
.end method
